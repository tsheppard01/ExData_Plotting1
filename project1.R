#Function to import and format data from file
#File 'household_poser_consumption.txt' should
#downloaded and placed in same folder as this file

importData <- function() {

        #Read the data into R
        data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")

        #Create a DateTime field and format correctly
        data$Date <- paste(data$Date,data$Time)
        data$Date <- strptime(data$Date, format="%d/%m/%Y %H:%M:%S")

        #Subset the data to give only dates required
        subset(data, data$Date>"2007-02-01" & data$Date<"2007-02-03")
}