scriptsDir<<-"./scripts/"
source(paste(scriptsDir,"initialize.R",sep=""))
if(!exists("dataFrameSubset")){
    source(paste(scriptsDir,"totalStepsByDay.R",sep=""))
    
}else{
    message("data set is still not declared")
}