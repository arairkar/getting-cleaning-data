getting-cleaning-data project assignment readme

#This is the project assignment for the course Getting and cleaning data. 

Instructions

Getting and Cleaning Data Course Projectless 
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Good luck!

#The following variables are extracted from the available raw data into tidydata.csv . 
#Note the original data for the course project along with it’s readme file and explanation is available at
#https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#The following transformations were applied to the original data.
#The test and training sets were merged into one data set.
#The columns containing mean and std deviation were extracted along with the subject and activity columns.
#The Subject and Activity columns were renamed as such.
#The Activity numbers were relabeled from the activity description file “activity_labels.txt”.
# The entire dataset was grouped by Activity and subject number 
# with a Mean of each column generaged for each grouped data set.

# Note : Only the mean and standard deviation columns are extracted
# from the original data set per course project instructions

# All data in subsequent columns is the average floating point data 
# for each activity and subject  for each columnfrom the original data set. 

# The final summary data set is then written to a csv file named "tidydata.txt" with the fwrite command. The tidy.data.txt output file is included in this commit

