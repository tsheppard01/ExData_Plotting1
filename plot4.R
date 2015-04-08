#file containing data import function
source("project1.R")

#Function to plot the 4th example
plot4 <- function() {
        #import the data
        data <- importData()

        #Set the grid
        par(mfrow = c(2,2))
        
        #Plot1
        plot(data$Date,data$Global_active_power, type="l", xlab="", ylab = "Global Active Power")
        
        #Plot2 
        plot(data$Date,data$Voltage,type="l",ylab="Voltage", xlab="datetime")

        #Plot3
        plot(data$Date,data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
        lines(data$Date, data$Sub_metering_1, col="black")
        lines(data$Date, data$Sub_metering_2, col="red")
        lines(data$Date, data$Sub_metering_3, col="blue")
        legend("topright", legend=c("sub_metering_1", "sub_metering_2","sub_metering_3"), lty = c(1,1,1), col=c("black","red","blue"), bty="n")

        #Plot4
        plot(data$Date,data$Global_reactive_power,type="l",ylab="Global_reactive_power", xlab="datetime")

        #Create png file
        dev.copy(png, file = "plot4.png")
        dev.off()
}