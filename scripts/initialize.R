## Omar, Velazquez <chaneme.vj@gmail.com>
## keep DRY your code
## In  order to keep clean the plot scripts, i am using this script with the common code used between the plotting Scripts
## Best practice: Dont Repeat Yourself DRY
library(dplyr)
library(datasets)
setwd(getwd())
if(!file.exists("activity.zip")){
    download.file("https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip","activity.zip","curl")     
}
if(!file.exists("activity.csv")){
    unzip("activity.zip")
}
if(!exists("dataFrame")){
    dataFrame<-read.csv("activity.csv")
}    
str(dataFrame)
## prepare dates
if(!exists("dataFrameSubset")){
    message("subsetting")
    #dataFrameSubset<-filter(dataFrame, (dataFrame$Date == "1/2/2007" | dataFrame$Date== "2/2/2007")) 
    #dataFrameSubset$Date<-as.Date(dataFrameSubset$Date, format = "%d/%m/%Y")
    #dataFrameSubset$DateTime<-as.POSIXct(paste(dataFrameSubset$Date, dataFrameSubset$Time))
    #dataFrameSubset$Weekday<-wday(dataFrameSubset$Date, label=TRUE)
}