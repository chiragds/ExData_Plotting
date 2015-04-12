data1 <- read.table("household_power_consumption\\household_power_consumption.txt", sep = ";", as.is = TRUE, skip=1)
subDF1 <- subset(data1, as.Date(data1$V1, "%d/%m/%Y") >= as.Date("2007-02-01"))
subDF1 <- subset(subDF1, as.Date(subDF1$V1, "%d/%m/%Y") <= as.Date("2007-02-02"))

png("plot1.png", 480, 480)

hist(as.numeric(subDF1$V3), xlab = "Global Acitve Power (kilowatts)", main = "Global Active Power", col = "red")

dev.off()