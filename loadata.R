if (!file.exists("./data")){dir.create('./data')}

#Downloads data...and store it into a temporary file before unzipping it
if (!file.exists("data/household_power_consumption.txt")){
  fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  temp <- tempfile()
  download.file(fileURL,temp)
  unzip(temp,exdir = "./data")
  unlink(temp)
  }



#We don't want to read all the data since we are interested only in 2 days, so we get the header by reading only the first
#line of the file we then use the column names to read only 2 days from the data.

header <- read.table("data/household_power_consumption.txt",sep = ";",header = TRUE,nrows = 1)
colNames <- names(header)
household<- read.table("data/household_power_consumption.txt",na.strings="?",sep = ";",skip=grep("^[1,2]/2/2007", readLines("data/household_power_consumption.txt")),nrows=2879)
names(household) <- colNames
household$Date <- as.Date(household$Date,"%d/%m/%Y")
