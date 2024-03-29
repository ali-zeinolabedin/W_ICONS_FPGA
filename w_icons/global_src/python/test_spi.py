 # Module      : to be completed
 # Author      : Ali Zeinolabedin
 # Project Name: W_ICONS
 # Company     : Blackrock Neurotech
 #

from pyftdi.spi import SpiController, SpiIOError, SpiPort
from pyftdi.ftdi import Ftdi
import time
print(Ftdi.show_devices())

# Instantiate a SPI controller
spi = SpiController()

# Configure the first interface (IF/1) of the FTDI device as a SPI master
spi.configure('ftdi://ftdi:232h:FT78J8KI/1')

# Get a port to a SPI slave w/ /CS on A*BUS3 and SPI mode 0 @ 12MHz
slave = spi.get_port(cs=0, freq=10E6, mode=0)

#Request the JEDEC ID from the SPI slave
#jedec_id = slave.exchange([0x9f], 3)
#print(jedec_id)

#write_buf = b'\x01\x02\x062'
#read_buf = slave.exchange(write_buf, stop=1, duplex=True)
#print(read_buf)
#write_buf = b'\x06'
#i = 1
#while i<10:
#	slave.exchange(b'\x06', stop=1)
#	slave.exchange(b'\x0a', stop=1)
#	slave.exchange(b'\x36', stop=1)
#	i += 1
	#print(read_buf)

read_buf =slave.exchange(b'\x50\x00\x00\x00\x05\x80', 6,start=1,stop=1,duplex=1,)
print("Config SPI:",read_buf)

while 1>0:

	read_buf = slave.exchange([0x60, 0x00 , 0x00, 0x00, 0x00, 0x00], 6,duplex=1, start=1, stop=1)
	print("CHIP ID:",read_buf)



	read_buf = slave.exchange([0x2a, 0xaa , 0xaa, 0xaa, 0xaf, 0x00], 6,duplex=1, start=1, stop=1)
	print("Write Data:", 0xaaaaaaaa)
	#read_buf = slave.exchange([0x10, 0x00 , 0x00, 0x07, 0x05, 0x00], 6,duplex=1, start=1, stop=1)
	read_buf = slave.exchange([0x10, 0x00 , 0x00, 0x08, 0xc8, 0x80], 6,duplex=1, start=1, stop=1)
	print("Write Add :", 0x70)


	#read_buf = slave.exchange([0x30, 0x00 , 0x00, 0x07, 0x0f, 0x00], 6,duplex=1, start=1, stop=1)
	read_buf = slave.exchange([0x30, 0x00 , 0x00, 0x08, 0xc2, 0x80], 6,duplex=1, start=1, stop=1)
	print("Read ADD:",0x70)
	read_buf = slave.exchange([0x40, 0x00 , 0x00, 0x00, 0x00, 0x00], 6,duplex=1, start=1, stop=1)
	print("Read Data:", read_buf)


	read_buf = slave.exchange([0x20, 0x00 , 0x00, 0x00, 0x1e, 0x80], 6,duplex=1, start=1, stop=1)
	#read_buf = slave.exchange([0x10, 0x00 , 0x00, 0x07, 0x05, 0x00], 6,duplex=1, start=1, stop=1)
	read_buf = slave.exchange([0x10, 0x00 , 0x00, 0x05, 0x8b, 0x00], 6,duplex=1, start=1, stop=1)


	read_buf = slave.exchange([0x20, 0x00 , 0x00, 0x00, 0x0c, 0x00], 6,duplex=1, start=1, stop=1)
	#read_buf = slave.exchange([0x10, 0x00 , 0x00, 0x07, 0x05, 0x00], 6,duplex=1, start=1, stop=1)
	read_buf = slave.exchange([0x10, 0x00 , 0x00, 0x05, 0xc1, 0x00], 6,duplex=1, start=1, stop=1)


	read_buf = slave.exchange([0x20, 0x02 , 0x00, 0x02, 0x1d, 0x80], 6,duplex=1, start=1, stop=1)
	#read_buf = slave.exchange([0x10, 0x00 , 0x00, 0x07, 0x05, 0x00], 6,duplex=1, start=1, stop=1)
	read_buf = slave.exchange([0x10, 0x00 , 0x00, 0x01, 0x44, 0x00], 6,duplex=1, start=1, stop=1)


	time.sleep(3/100);


	read_buf = slave.exchange([0x20, 0x00 , 0x00, 0x02, 0x16, 0x00], 6,duplex=1, start=1, stop=1)
	#read_buf = slave.exchange([0x10, 0x00 , 0x00, 0x07, 0x05, 0x00], 6,duplex=1, start=1, stop=1)
	read_buf = slave.exchange([0x10, 0x00 , 0x00, 0x01, 0x44, 0x00], 6,duplex=1, start=1, stop=1)

#to be used later to read from the SPI slave
'''
for i in range (120):
	read_buf = slave.read(10)
	print(read_buf)
'''
