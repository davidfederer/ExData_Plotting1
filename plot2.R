plot(data$datetime, data$Global_active_power, type="l", xlab = "", ylab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png", width=504, height=504)
dev.off()
