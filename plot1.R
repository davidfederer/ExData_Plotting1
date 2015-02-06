hist(data$Global_active_power, main="Global Active Power",col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.copy(png, file = "plot1.png", width=504, height=504) 
dev.off();