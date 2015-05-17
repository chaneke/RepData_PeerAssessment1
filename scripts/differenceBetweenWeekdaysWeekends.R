dataSet$date<-as.Date(dataSet$date, "%Y-%m-%d")
weekDays<-weekdays(dataSet$date)
dayKind <- vector()
for(i in 1:nrow(dataSet)){
    dayKind[i]<-"Weekday"
    if((tolower(weekDays[i]) == "saturday" || tolower(weekDays[i]) == "sunday" ) ||
       (tolower(weekDays[i]) == "sabado" || tolower(weekDays[i]) == "domingo" )    
    ){
        dayKind[i]<-"Weekend"
    }
}
dataSet$dayKind<-dayKind
dataSet$dayKind<-factor(dataSet$dayKind)
dailyStepsCount<-aggregate(steps ~ interval + dayKind, data = dataSet, mean)
names(dailyStepsCount)<-c("interval", "dayKind", "steps")
weekdayWeekendPlot<-xyplot(steps ~ interval | dayKind, dailyStepsCount, type = "l", layout = c(1, 2), 
           xlab = "Interval", ylab = "Steps number")
print(weekdayWeekendPlot)