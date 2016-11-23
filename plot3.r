housepwr<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", 
                     na.strings = c("?","0"))
png("plot3.png", height = 480, width = 480)
date_sub<-subset(housepwr, Date %in% c("1/2/2007", "2/2/2007"))
date_sub$DATE_TIME<-with(date_sub, paste0(Date, Time))
re_date<-strptime(date_sub$DATE_TIME, format = "%d/%m/%Y%H:%M:%S")
plot(re_date, date_sub$Sub_metering_1, type = "l", 
     xlab = "", ylab = "Energy sub metering")
lines(re_date,date_sub$Sub_metering_2, type = "l", col = "red")
lines(re_date,date_sub$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), lty = 1, cex = 0.75)
dev.off()