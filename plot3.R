data1 <- read.table("household_power_consumption\\household_power_consumption.txt", sep = ";", as.is = TRUE, skip=1)
subDF1 <- subset(data1, as.Date(data1$V1, "%d/%m/%Y") >= as.Date("2007-02-01"))
subDF1 <- subset(subDF1, as.Date(subDF1$V1, "%d/%m/%Y") <= as.Date("2007-02-02"))

png("plot3.png", 480, 480)

plot(as.POSIXct(strptime(paste(subDF1$V1, subDF1$V2), "%d/%m/%Y %H:%M:%S")), subDF1$V7, type = "l", xlab = "", ylab = "Energy sub metering")
lines(as.POSIXct(strptime(paste(subDF1$V1, subDF1$V2), "%d/%m/%Y %H:%M:%S")), subDF1$V8, col="red")
lines(as.POSIXct(strptime(paste(subDF1$V1, subDF1$V2), "%d/%m/%Y %H:%M:%S")), subDF1$V9, col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1),lwd=c(2.5,2.5),col=c("black","red","blue"))

dev.off()