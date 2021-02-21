



source("loadata.R")

png(file="plot1.png", width=600, height=350)

hist(household$Global_active_power,col = "red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)")

dev.off()