using LibSerialPort

function WriteRS232C(txt, portname="COM11", baudrate=115200)
    LibSerialPort.open(portname, baudrate) do sp
        sleep(0.5)
        write(sp, txt * "\r\n")
    end
end

function ReadRS232C(portname="COM11", baudrate=115200)
    txt = ""
    LibSerialPort.open(portname, baudrate) do sp
        sleep(0.5)
        if bytesavailable(sp) > 0
            txt = String(read(sp))
        end
    end
    return txt
end


portname = "COM11"
baudrate = 115200

WriteRS232C("TESTWrite", portname, baudrate)
