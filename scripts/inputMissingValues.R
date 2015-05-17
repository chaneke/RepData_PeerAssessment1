stepsAverage<-aggregate(steps ~ interval, data = dataSet, FUN = mean)
replaceNas<-numeric()
for (i in 1:nrow(dataSet)) {
    position<-dataSet[i, ]
    if (is.na(position$steps)) {
        steps<-subset(stepsAverage,interval==position$interval)$steps
    } else {
        steps<-position$steps
    }
    replaceNas<-c(replaceNas, steps)
}
dataSet2<-dataSet
dataSet2$steps<-replaceNas
totalStepsWithNas<-aggregate(steps ~ date, data = dataSet2, sum, na.rm = TRUE)
hist(totalStepsWithNas$steps, main = "Steps by day with NAs replaced by steps Average", xlab = "",ylab="", col = "violet")
totalSteps2Mean<-mean(totalStepsWithNas$steps)
totalSteps2Median<-median(totalStepsWithNas$steps)
print(paste("Total steps [NAS replaced by steps average] MEAN:",totalStepsMean))
print(paste("Total steps [NAS replaced by steps average] MEDIAN:",totalStepsMedian))
