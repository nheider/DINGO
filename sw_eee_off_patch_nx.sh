#!/bin/sh
i2ctransfer -y 1 w4@0x5f 0x03 0xc0 0x40 0x90 #Module 9: No Pause frames are generated for ingress rate limiting with an EEE link
i2ctransfer -y 1 w4@0x5f 0x03 0xc2 0x00 0x80
i2ctransfer -y 1 w4@0x5f 0x03 0xc4 0x20 0x00

#i2ctransfer -y 1 w3@0x5f 0x11 0x00 0x01 #turn off auto-negotation for PHY1
#i2ctransfer -y 1 w3@0x5f 0x21 0x00 0x01 #turn off auto-negotation for PHY2
#i2ctransfer -y 1 w3@0x5f 0x31 0x00 0x01 #turn off auto-negotation for PHY3
#i2ctransfer -y 1 w3@0x5f 0x41 0x00 0x01 #turn off auto-negotation for PHY4

#i2ctransfer -y 1 w3@0x5f 0x11 0x12 0x1F #Configure PHY1 as master during master-slave negotiation
#i2ctransfer -y 1 w3@0x5f 0x21 0x12 0x1F #Configure PHY2 as master during master-slave negotiation
#i2ctransfer -y 1 w3@0x5f 0x31 0x12 0x1F #Configure PHY3 as master during master-slave negotiation
#i2ctransfer -y 1 w3@0x5f 0x41 0x12 0x1F #Configure PHY4 as master during master-slave negotiation

#PHY1
#turn off eee 
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x07
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x3c
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x07
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x00
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x6f
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0xdd 0x0b
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x8f
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x60 0x32
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x9d
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x24 0x8c
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x75
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x60
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0xd3
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x77 0x77
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x06
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x30 0x08
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x08
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x20 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x04
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0xd0
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x13
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x6E 0xFF
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x14
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0xE6 0xFF
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x15
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x6E 0xFF
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x16
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0xE6 0xFF
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x17
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0xFF
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x18
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x43 0xFF
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x19
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0xC3 0xFF
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x1A
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x6F 0xFF
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x1B
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x07 0xFF
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x1C
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x0F 0xFF
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x1D
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0xE7 0xFF
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x1E
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0xEF 0xFF
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0x00 0x20
i2ctransfer -y 1 w4@0x5f 0x11 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x11 0x1c 0xEE 0xEE

#PHY2
#turn off eee 
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x07
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x3c
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x07
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x00
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x6f
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0xdd 0x0b
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x8f
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x60 0x32
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x9d
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x24 0x8c
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x75
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x60
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0xd3
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x77 0x77
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x06
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x30 0x08
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x08
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x20 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x04
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0xd0
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x13
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x6E 0xFF
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x14
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0xE6 0xFF
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x15
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x6E 0xFF
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x16
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0xE6 0xFF
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x17
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0xFF
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x18
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x43 0xFF
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x19
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0xC3 0xFF
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x1A
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x6F 0xFF
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x1B
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x07 0xFF
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x1C
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x0F 0xFF
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x1D
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0xE7 0xFF
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x1E
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0xEF 0xFF
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0x00 0x20
i2ctransfer -y 1 w4@0x5f 0x21 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x21 0x1c 0xEE 0xEE

#PHY3
#turn off eee 
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x07
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x3c
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x07
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x00
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x6f
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0xdd 0x0b
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x8f
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x60 0x32
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x9d
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x24 0x8c
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x75
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x60
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0xd3
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x77 0x77
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x06
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x30 0x08
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x08
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x20 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x04
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0xd0
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x13
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x6E 0xFF
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x14
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0xE6 0xFF
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x15
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x6E 0xFF
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x16
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0xE6 0xFF
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x17
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0xFF
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x18
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x43 0xFF
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x19
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0xC3 0xFF
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x1A
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x6F 0xFF
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x1B
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x07 0xFF
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x1C
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x0F 0xFF
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x1D
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0xE7 0xFF
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x1E
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0xEF 0xFF
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0x00 0x20
i2ctransfer -y 1 w4@0x5f 0x31 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x31 0x1c 0xEE 0xEE

#PHY4
#turn off eee 
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x07
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x3c
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x07
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x00
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x6f
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0xdd 0x0b
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x8f
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x60 0x32
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x9d
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x24 0x8c
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x75
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x60
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0xd3
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x77 0x77
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x06
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x30 0x08
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x08
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x20 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x04
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0xd0
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x13
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x6E 0xFF
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x14
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0xE6 0xFF
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x15
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x6E 0xFF
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x16
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0xE6 0xFF
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x17
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0xFF
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x18
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x43 0xFF
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x19
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0xC3 0xFF
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x1A
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x6F 0xFF
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x1B
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x07 0xFF
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x1C
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x0F 0xFF
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x1D
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0xE7 0xFF
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x1E
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0xEF 0xFF
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0x00 0x20
i2ctransfer -y 1 w4@0x5f 0x41 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x41 0x1c 0xEE 0xEE

#PHY5
#turn off eee 
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x07
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x3c
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x07
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x00
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x6f
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0xdd 0x0b
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x8f
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x60 0x32
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x9d
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x24 0x8c
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x75
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x60
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0xd3
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x77 0x77
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x06
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x30 0x08
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x08
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x20 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x04
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0xd0
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x13
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x6E 0xFF
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x14
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0xE6 0xFF
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x15
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x6E 0xFF
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x16
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0xE6 0xFF
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x17
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0xFF
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x18
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x43 0xFF
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x19
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0xC3 0xFF
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x1A
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x6F 0xFF
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x1B
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x07 0xFF
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x1C
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x0F 0xFF
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x1D
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0xE7 0xFF
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x1E
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0xEF 0xFF
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x00 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0x00 0x20
i2ctransfer -y 1 w4@0x5f 0x51 0x1a 0x40 0x01
i2ctransfer -y 1 w4@0x5f 0x51 0x1c 0xEE 0xEE



