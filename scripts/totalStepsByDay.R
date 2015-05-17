## Omar Velazquez
## Total Steps By Day
totalStepsByDay<-aggregate(steps~date,data=dataSet,sum)
hist(totalStepsByDay$steps,main="Steps by day",col="blue",border="cyan",xlab="",ylab="",axes=TRUE)
totalStepsMean<-mean(totalStepsByDay$steps)
totalStepsMedian<-median(totalStepsByDay$steps)
