sourceFile <- "D:/household_power_consumption.txt"
dataFile <- read.table(sourceFile, header = TRUE, sep=";", stringsAsFactors = FALSE, dec = ".")
ProcessedData <- data[dataFile$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePowerData <- as.numeric(ProcessedData$Global_active_power)

png("D:/plot1.png", width = 480, height = 480)
hist(globalActivePowerData, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()