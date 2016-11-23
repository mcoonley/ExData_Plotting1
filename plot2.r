housepwr<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", 
                     na.strings = c("?","NA"))
png("plot2.png", width = 480, height = 480)
date_sub<-subset(housepwr, Date %in% c("1/2/2007", "2/2/2007"))
date_sub$DATE_TIME<-with(date_sub, paste0(Date, Time))
re_date<-strptime(date_sub$DATE_TIME, format = "%d/%m/%Y%H:%M:%S")
plot(re_date, date_sub$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()



