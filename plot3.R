#file containing data import function
source("project1.R")

#Function to plot the 3rd example
plot3 <- function() {
        #Load data
        data <- importData()

        #Plot data
        plot(data$Date,data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
        lines(data$Date, data$Sub_metering_1, col="black")
        lines(data$Date, data$Sub_metering_2, col="red")
        lines(data$Date, data$Sub_metering_3, col="blue")
        legend("topright", legend=c("sub_metering_1", "sub_metering_2","sub_metering_3"), lty = c(1,1,1), col=c("black","red","blue"))

        #Create png file
        dev.copy(png, file = "plot3.png")
        dev.off()
}
