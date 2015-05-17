## Omar Velazquez
## Total Steps By Day
totalStepsByDay<-aggregate(steps~date,data=dataSet,sum)
hist(totalStepsByDay$steps,main="Steps by day",col="blue",border="cyan",xlab="",ylab="",axes=TRUE)
print(mean(totalStepsByDay$steps))
print(median(totalStepsByDay$steps))
