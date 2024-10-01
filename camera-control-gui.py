import tkinter as tk
from tkinter import ttk
import socket
import struct
import threading
import time

class SIYICameraControl:
    def __init__(self, master):
        self.master = master
        self.master.title("SIYI A8 mini Camera Control")
        
        # Camera connection settings
        self.camera_ip = "192.168.144.25"  # Default IP, adjust as needed
        self.camera_port = 37260  # Default port, adjust as needed
        self.sock = None
        self.connected = False
        self.seq = 0
        
        self.setup_gui()
        self.connect_to_camera()

    def setup_gui(self):
        # Connection frame
        conn_frame = ttk.Frame(self.master, padding="10")
        conn_frame.grid(row=0, column=0, sticky=(tk.W, tk.E, tk.N, tk.S))
        
        ttk.Label(conn_frame, text="Connection Status:").grid(row=0, column=0)
        self.conn_status = ttk.Label(conn_frame, text="Disconnected", foreground="red")
        self.conn_status.grid(row=0, column=1)

        # Gimbal control frame
        gimbal_frame = ttk.LabelFrame(self.master, text="Gimbal Control", padding="10")
        gimbal_frame.grid(row=1, column=0, sticky=(tk.W, tk.E, tk.N, tk.S), padx=10, pady=5)
        
        ttk.Label(gimbal_frame, text="Yaw").grid(row=0, column=0)
        self.yaw_slider = ttk.Scale(gimbal_frame, from_=-100, to=100, orient=tk.HORIZONTAL)
        self.yaw_slider.grid(row=0, column=1, sticky=(tk.W, tk.E))
        self.yaw_slider.bind("<ButtonRelease-1>", lambda e: self.on_slider_release())
        
        ttk.Label(gimbal_frame, text="Pitch").grid(row=1, column=0)
        self.pitch_slider = ttk.Scale(gimbal_frame, from_=-100, to=100, orient=tk.HORIZONTAL)
        self.pitch_slider.grid(row=1, column=1, sticky=(tk.W, tk.E))
        self.pitch_slider.bind("<ButtonRelease-1>", lambda e: self.on_slider_release())
        
        ttk.Button(gimbal_frame, text="Center Gimbal", command=self.center_gimbal).grid(row=2, column=0, columnspan=2)

        # Camera control frame
        camera_frame = ttk.LabelFrame(self.master, text="Camera Control", padding="10")
        camera_frame.grid(row=2, column=0, sticky=(tk.W, tk.E, tk.N, tk.S), padx=10, pady=5)
        
        ttk.Button(camera_frame, text="Zoom In", command=lambda: self.zoom(1)).grid(row=0, column=0)
        ttk.Button(camera_frame, text="Zoom Out", command=lambda: self.zoom(-1)).grid(row=0, column=1)
        ttk.Button(camera_frame, text="Stop Zoom", command=lambda: self.zoom(0)).grid(row=0, column=2)
        
        ttk.Button(camera_frame, text="Take Photo", command=self.take_photo).grid(row=1, column=0)
        self.record_btn = ttk.Button(camera_frame, text="Start Recording", command=self.toggle_recording)
        self.record_btn.grid(row=1, column=1, columnspan=2)

    def connect_to_camera(self):
        try:
            self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            self.sock.settimeout(1.0)
            self.connected = True
            self.conn_status.config(text="Connected", foreground="green")
            
            # Start a thread to continuously send gimbal control commands
            self.control_thread = threading.Thread(target=self.control_loop, daemon=True)
            self.control_thread.start()
        except Exception as e:
            self.conn_status.config(text=f"Connection Failed: {str(e)}", foreground="red")

    def send_command(self, cmd_id, data=b''):
        if not self.connected:
            return
        
        # Construct packet according to SDK protocol
        stx = struct.pack('<H', 0x6655)  # Start mark, low byte first
        ctrl = struct.pack('B', 0)  # Need ACK
        data_len = struct.pack('<H', len(data))  # Data length, low byte first
        seq = struct.pack('<H', self.seq)  # Sequence number, low byte first
        cmd = struct.pack('B', cmd_id)  # Command ID
        
        packet = stx + ctrl + data_len + seq + cmd + data
        
        # Calculate CRC16 (simplified - in real implementation, you'd need proper CRC16)
        crc = struct.pack('<H', sum(packet) & 0xFFFF)
        
        packet += crc
        
        try:
            self.sock.sendto(packet, (self.camera_ip, self.camera_port))
            self.seq = (self.seq + 1) % 65536
        except:
            self.connected = False
            self.conn_status.config(text="Connection Lost", foreground="red")

    def control_loop(self):
        while self.connected:
            yaw = int(self.yaw_slider.get())
            pitch = int(self.pitch_slider.get())
            if yaw != 0 or pitch != 0:
                data = struct.pack('<bb', yaw, pitch)
                self.send_command(0x07, data)  # Gimbal rotation command
            time.sleep(0.05)  # 20Hz update rate

    def on_slider_release(self):
        self.yaw_slider.set(0)
        self.pitch_slider.set(0)

    def center_gimbal(self):
        self.send_command(0x08, struct.pack('B', 1))

    def zoom(self, direction):
        self.send_command(0x05, struct.pack('b', direction))

    def take_photo(self):
        self.send_command(0x0C, struct.pack('B', 0))

    def recording = False
    def toggle_recording(self):
        self.recording = not self.recording
        self.send_command(0x0C, struct.pack('B', 2))
        if self.recording:
            self.record_btn.config(text="Stop Recording")
        else:
            self.record_btn.config(text="Start Recording")

    def __del__(self):
        if self.sock:
            self.sock.close()

if __name__ == "__main__":
    root = tk.Tk()
    app = SIYICameraControl(root)
    root.mainloop()
