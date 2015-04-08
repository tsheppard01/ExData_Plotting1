#fiel containing data import function
source("project1.R")

#Function to plot the 1st example
plot1 <- function(){
        #import data
        data <- importData()  

        #Plot histogram
        hist(data$Global_active_power, xlab="Global Active Power (kilowatts)",main = "Global Active Power", col="red")

        #Create png file
        dev.copy(png, file = "plot1.png")
        dev.off()
}
