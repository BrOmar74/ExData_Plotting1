library(lubridate)
#We don't want to read all the data since we are interested only in 2 days, so we get the header by reading only the first
#line of the file we then use the column names to read only 2 days from the data.

source("loadata.R")

time_formated <- strptime(household$Time,"%H:%M:%S")

date(time_formated) <- household$Date

png(file="plot2.png")

plot(time_formated,household$Global_active_power,type = "l",xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()