subMetering1 <- as.numeric(data$Sub_metering_1)
subMetering2 <- as.numeric(data$Sub_metering_2)
subMetering3 <- as.numeric(data$Sub_metering_3)

with(data, plot(datetime, subMetering1, type = "l", xlab="", ylab="Energy sub metering", col="black"))
lines(data$datetime, subMetering2, type="l", col = "red")
lines(data$datetime, subMetering3, type="l", col = "blue")
legend("topright", pch = "_", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.8)

dev.copy(png, file = "plot3.png", width=504, height=504)
dev.off()