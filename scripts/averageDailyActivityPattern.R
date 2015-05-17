fiveMinutesIntervals<-tapply(dataSet$steps, dataSet$interval, mean, na.rm = TRUE)
plot(row.names(fiveMinutesIntervals),fiveMinutesIntervals, type = "l", 
     xlab = "5 minutes interval",ylab = "Steps count", main = "Average number of steps",col = "blue")
maximumInterval<-which.max(fiveMinutesIntervals)
print(paste("MAX Interval:",names(maximumInterval)))
