sourceFile <- "D:/household_power_consumption.txt"
dataFile <- read.table(sourceFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec=".")
ProcessedData <- data[dataFile$Date %in% c("1/2/2007","2/2/2007") ,]

datetimeFormat <- strptime(paste(ProcessedData$Date, ProcessedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

globalActivePowerData <- as.numeric(ProcessedData$Global_active_power)
png("D:/plot2.png", width = 480, height = 480)
plot(datetimeFormat, globalActivePowerData, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()