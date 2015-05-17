scriptsDir<<-"./scripts/"
source(paste(scriptsDir,"initialize.R",sep=""))
if(!exists("dataFrameSubset")){
    source(paste(scriptsDir,"totalStepsByDay.R",sep=""))
    source(paste(scriptsDir,"averageDailyActivityPattern.R",sep=""))
    source(paste(scriptsDir,"inputMissingValues.R",sep=""))
    source(paste(scriptsDir,"differenceBetweenWeekdaysWeekends",sep=""))
}else{
    message("data set is still not declared")
}