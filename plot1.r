housepwr<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", 
                     na.strings = c("?","NA"))
png("plot1.png")
with(housepwr, hist(subset(Global_active_power, Date %in% c("1/2/2007", "2/2/2007")), 
                    col = "red", main = "Global Active Power", ylim = c(0,1200),
                    xlab = "Global Active Power (kilowatts)"))
dev.off()
