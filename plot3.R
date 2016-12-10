sourceFile <- "D:/household_power_consumption.txt"
dataFile <- read.table(sourceFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
ProcessedData <- data[dataFile$Date %in% c("1/2/2007","2/2/2007") ,]

datetimeFormat <- strptime(paste(ProcessedData$Date, ProcessedData$Time, sep = " "), "%d/%m/%Y %H:%M:%S") 
subMetering01 <- as.numeric(ProcessedData$Sub_metering_1)
subMetering02 <- as.numeric(ProcessedData$Sub_metering_2)
subMetering03 <- as.numeric(ProcessedData$Sub_metering_3)

png("D:/plot3.png", width = 480, height = 480)
plot(datetimeFormat, subMetering01, type = "l", ylab = "Energy Submetering", xlab = "")
lines(datetimeFormat, subMetering02, type = "l", col = "red")
lines(datetimeFormat, subMetering03, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))

dev.off()