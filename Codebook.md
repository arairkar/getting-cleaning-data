###########################################################

#Codebook to explain the data set for Coursera course - ‘Getting and Cleaning data’ course project

# The final data set is extracted into a file named tidydata.txt which is a comma separated values file

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


#Explanations of columns

# Subject - Subject number identifier for the person ranging from 1 to 10
#Activity - label type of activity “Walking, walking downstairs, walking upstairs, sitting, standing or laying

#timedomain prefix are the the measurements taking in time .
#frequencydomain prefix are the fast Fourier transform values of the time measurements

###### Accelorometer Mean and standard deviations in the X, Y and Z axes in the time domain
# timeDomainBodyAccelerometerMeanX
# timeDomainBodyAccelerometerMeanY
# timeDomainBodyAccelerometerMeanZ
# timeDomainBodyAccelerometerStdDevX
# timeDomainBodyAccelerometerStdDevY
# timeDomainBodyAccelerometerStdDevZ


#####Gravity accelerometer Mean and standard deviation readings in the X,Y and Z axes in time domain
# timeDomainGravityAccelerometerMeanX
# timeDomainGravityAccelerometerMeanY
# timeDomainGravityAccelerometerMeanZ
# timeDomainGravityAccelerometerStdDevX
# timeDomainGravityAccelerometerStdDevY
# timeDomainGravityAccelerometerStdDevZ


##### Mean and standard deviation of the Jerk Body measurements from the Accelerometer in time domain
# timeDomainBodyAccelerometerJerkMeanX
# timeDomainBodyAccelerometerJerkMeanY
# timeDomainBodyAccelerometerJerkMeanZ
# timeDomainBodyAccelerometerJerkStdDevX
# timeDomainBodyAccelerometerJerkStdDevY
# timeDomainBodyAccelerometerJerkStdDevZ


####Body Gyroscope Mean and standard deviation in X,Y,Z direction in time domain
# timeDomainBodyGyroscopeMeanX
# timeDomainBodyGyroscopeMeanY
# timeDomainBodyGyroscopeMeanZ
# timeDomainBodyGyroscopeStdDevX
# timeDomainBodyGyroscopeStdDevY
# timeDomainBodyGyroscopeStdDevZ


#### Body Gyroscope Jerk mean and stardard deviations in X,Y,Z directions in time domain
# timeDomainBodyGyroscopeJerkMeanX
# timeDomainBodyGyroscopeJerkMeanY
# timeDomainBodyGyroscopeJerkMeanZ
# timeDomainBodyGyroscopeJerkStdDevX
# timeDomainBodyGyroscopeJerkStdDevY
# timeDomainBodyGyroscopeJerkStdDevZ

######Body Accelerometer Magnitude Mean and Standard deviations in time domain
# timeDomainBodyAccelerometerMagnitudeMean
# timeDomainBodyAccelerometerMagnitudeStdDev

####Gravity Accelerometer Magnitude Mean and standard deviations in time domain
# timeDomainGravityAccelerometerMagnitudeMean
# timeDomainGravityAccelerometerMagnitudeStdDev

####Body Acceleromter jerk magnitude mean and standard deviation measurements in time domain
# timeDomainBodyAccelerometerJerkMagnitudeMean
# timeDomainBodyAccelerometerJerkMagnitudeStdDev


####Body Gyroscope Magnitude mean and standard deviations in time domain
# timeDomainBodyGyroscopeMagnitudeMean
# timeDomainBodyGyroscopeMagnitudeStdDev

#####Body Gyroscope Jerk Magnitude mean and standard deviations in time domain
# timeDomainBodyGyroscopeJerkMagnitudeMean
# timeDomainBodyGyroscopeJerkMagnitudeStdDev


#####Repeat of all above measurements in frequency domain instead of time domain (the FFT's of the time measurements)

