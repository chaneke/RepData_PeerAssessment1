## Omar, Velazquez <chaneme.vj@gmail.com>
## keep DRY your code
## In  order to keep clean the plot scripts, i am using this script with the common code used between the plotting Scripts
## Best practice: Dont Repeat Yourself DRY
library(dplyr)
library(plyr)
library(datasets)
library(lattice)
setwd(getwd())
if(!file.exists("activity.zip")){
    download.file("https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip","activity.zip","curl")     
}
if(!file.exists("activity.csv")){
    unzip("activity.zip")
}
if(!exists("dataSet")){
    dataSet<<-read.csv("activity.csv",colClasses=c("numeric", "character","numeric"))
}