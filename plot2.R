data1 <- read.table("household_power_consumption\\household_power_consumption.txt", sep = ";", as.is = TRUE, skip=1)
#subDF1 <- subset(data1, as.Date(data1$V1, "%d/%m/%Y") >= as.Date("2007-02-01"))
#subDF1 <- subset(subDF1, as.Date(subDF1$V1, "%d/%m/%Y") <= as.Date("2007-02-02"))
subDF1 <- subset(data1, as.Date(data1$V1, "%d/%m/%Y") >= as.Date("2007-02-01") & as.Date(data1$V1, "%d/%m/%Y") <= as.Date("2007-02-02"))

png("plot2.png", 480, 480)

plot(as.POSIXct(strptime(paste(subDF1$V1, subDF1$V2), "%d/%m/%Y %H:%M:%S")), as.numeric(subDF1$V3), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()