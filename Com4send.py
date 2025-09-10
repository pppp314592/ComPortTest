import serial

# readSer = serial.Serial('Com4', 115200)

portname = "COM4"
baudrate = 115200


readSer = serial.Serial(portname, baudrate, timeout=1)
# c = readSer.read()  # 1 byte
# string = readSer.read(10)  # 10 byte
# line = readSer.readline()  # 1 line (upto '\n')
# print("Read Serial:")
# print(c)
# print(string)
# print(line)
# readSer.close()
serialCommand = "test\r\n"
readSer.write(serialCommand.encode())
readSer.close()
