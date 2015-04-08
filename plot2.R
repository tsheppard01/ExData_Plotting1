#file containing data import function
source("project1.R")

#function to plot 2nd example
plot2 <- function() {
        #Load data
        data <- importData()

        #Plot data
        plot(data$Date,data$Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)")

        #Create png file
        dev.copy(png, file = "plot2.png")
        dev.off()
}
