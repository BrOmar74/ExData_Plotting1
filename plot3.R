source("loadata.R")


time_formated <- strptime(household$Time,"%H:%M:%S")

date(time_formated) <- household$Date

png(file="plot3.png")
plot(time_formated,household$Sub_metering_1,type="l",xlab = "", ylab = "Energy sub metering")
points(x=time_formated,household$Sub_metering_2,type = "l",col = "red")
points(x=time_formated,household$Sub_metering_3,type = "l",col = "blue")


legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),pch=c("_","_","_"),col=c("black","red","blue"))

dev.off()