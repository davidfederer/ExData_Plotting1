setwd("C:\\Users\\david.federer\\Documents\\Data Science Library\\Coursera\\Exploratory Data Analysis)
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = '?', nrows=2880, skip=66636, 
                   col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", 
                                 "Sub_metering_1", "Sub_metering_2", "Sub_metering_3") )

data$datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

