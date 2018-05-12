# Rstudio version is 1.0.153
# platform x86_64-apple-darwin15.6.0  
# R version is 3.4.1

#Below is my working directory for this project. This may need to be changed to a suitable directory.
setwd("~/coursera/getting-cleaning-data/Week4")
# install necessary packages
if("data.table" %in% rownames(installed.packages()) == FALSE) 
        {install.packages("data.table")}

library(data.table)
library(reshape2)
library(dplyr)

# Get project data files

fileurl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./week4_prog.zip"))
{
        download.file(fileurl1,destfile = "./week4_prog.zip",method = "curl")
}
        if(!file.exists("UCI HAR Dataset"))
{
        unzip("./week4_prog.zip")
        }

# Get primary data files into data frames
test_subject <- data.table::fread("./UCI HAR Dataset/test/subject_test.txt")
test_x <- data.table::fread("./UCI HAR Dataset/test/X_test.txt")
test_y <- data.table::fread("./UCI HAR Dataset/test/Y_test.txt")


train_subject <- data.table::fread("./UCI HAR Dataset/train/subject_train.txt")
train_x <- data.table::fread("./UCI HAR Dataset/train/X_train.txt")
train_y <- data.table::fread("./UCI HAR Dataset/train/Y_train.txt")



#Merges the training and the test sets to create one data set.

combineddt <- rbind(cbind(test_subject,test_y,test_x),cbind(train_subject,train_y,train_x))
rm(test_subject,test_x,test_y,train_subject,train_y,train_x)

# Get features list ad activities list for columnnames
featuresdt <- data.table::fread("./UCI HAR Dataset/features.txt")
activitiesdt <- data.table::fread("./UCI HAR Dataset/activity_labels.txt")

#Give column names to all columns
colnames(combineddt) <- c("Subject","Activity",unlist(featuresdt[,2]))

# Extracts only the measurements on the mean and standard deviation for each measurement.


keepcols <- grepl("Subject|Activity|mean|std",colnames(combineddt))
combineddt <- combineddt[,keepcols,with=FALSE]

#Uses descriptive activity names to name the activities in the data set

combineddt$Activity<- factor(combineddt$Activity,levels = activitiesdt[,1],labels = activitiesdt[, 2])

# Appropriately labels the data set with descriptive variable names.

combineddt$Subject = as.factor(combineddt$Subject)
combineddtcols <- colnames(combineddt)
combineddtcols <- gsub("\\(|\\)|-","",combineddtcols)
combineddtcols <- gsub("^t","timeDomain",combineddtcols)
combineddtcols <- gsub("^f","frequencyDomain",combineddtcols)
combineddtcols <- gsub("std","StdDev",combineddtcols)
combineddtcols <- gsub("mean","Mean",combineddtcols)
combineddtcols <- gsub("BodyBody","Body",combineddtcols)
combineddtcols <- gsub("Acc","Accelerometer",combineddtcols)
combineddtcols <- gsub("Mag","Magnitude",combineddtcols)
combineddtcols <- gsub("Freq","Frequency",combineddtcols)
combineddtcols <- gsub("Gyro","Gyroscope",combineddtcols)
colnames(combineddt) <- combineddtcols

#Summarize data by activity and subject

summarizeddt <- combineddt %>%
        group_by(Subject,Activity) %>% 
        summarize_all(funs(mean))

# From the data set in step 4, creates a second, independent tidy 
# data set with the average of each variable for each activity and each subject.
# Write output of summarized data to file tidy_data.csv
data.table::fwrite(summarizeddt, file="tidy_data.csv",sep=",")

