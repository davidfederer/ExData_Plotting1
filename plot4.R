par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(1, 1, 2, 1))
with(data, { 
  plot(datetime, Global_active_power, type="l", xlab = "", ylab="Global Active Power")

  plot(datetime, Voltage, type="l")
  
  subMetering1 <- as.numeric(data$Sub_metering_1)
  subMetering2 <- as.numeric(data$Sub_metering_2)
  subMetering3 <- as.numeric(data$Sub_metering_3)
  
  plot(datetime, subMetering1, type = "l", xlab="", ylab="Energy sub metering", col="black")
  lines(data$datetime, subMetering2, type="l", col = "red")
  lines(data$datetime, subMetering3, type="l", col = "blue")
  legend("topright", inset= 0.1, pch = "_", col = c("black", "red", "blue"), cex=0.8, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n", xjust=0)
  
  plot(datetime, Global_reactive_power, type="l")
})

dev.copy(png, file = "plot4.png", width=504, height=504) 
dev.off()