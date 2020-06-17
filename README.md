# Getting_and_Cleaning_Data
Assignment for the Getting and Cleaning Data Coursera course

This project is the assignment for the Getting And Cleaning Data course, from Coursera.

It contains the following files:

run_analysis.R - This is a script that generates a tidy data set showing the averages of different variables per activity type and subject from data from the 'Human Activity Recognition Using Smartphones Data Set' data set hosted at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

run_analysis_tidy.txt - A file with a sample output of the run_analysis.R script.


HOW THE run_analysis.R SCRIPT WORKS:
The script reads the measurements raw data containg measurements from the 'Human Activity Recognition Using Smartphones Data Set' data set.
It combines measurements, subjects and activity tables for both test and train data in a single data frame. It then summarizes the data frame by calculating the average for each measurement variable, per activity and per group and returns this tify data frame.
To execute the script, extract the 'Human Activity Recognition Using Smartphones Data Set' data set to the R working directory, then from the R console run source("run_analysis.R"), provided that the script is also located in the working directory.

The variables in the result data frame are:

activity - One of the following: WALKING,
 WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING or LAYING

subject - An identifier for each participant
timeBodyAccelerationMean_xAxis - Mean of the time-domain body acceleration signals for the X axis
timeBodyAccelerationMean_yAxis - Mean of the time-domain body acceleration signals for the Y axis
timeBodyAccelerationMean_zAxis - Mean of the time-domain body acceleration signals for the Z axis
timeGravityAccelerationMean_xAxis - Mean of the time-domain gravity acceleration signals for the X axis
timeGravityAccelerationMean_yAxis - Mean of the time-domain gravity acceleration signals for the Y axis
timeGravityAccelerationMean_zAxis - Mean of the time-domain gravity acceleration signals for the Z axis
timeBodyAccelerationJerkMean_xAxis - Mean of the time-domain body acceleration Jerk signals for the X axis
timeBodyAccelerationJerkMean_yAxis - Mean of the time-domain body acceleration Jerk signals for the Y axis
timeBodyAccelerationJerkMean_zAxis - Mean of the time-domain body acceleration Jerk signals for the Z axis
timeBodyGyroscopeMean_xAxis - Mean of the time-domain body gyroscope signals for the X axis
timeBodyGyroscopeMean_yAxis - Mean of the time-domain body gyroscope signals for the Y axis
timeBodyGyroscopeMean_zAxis - Mean of the time-domain body gyroscope signals for the Z axis
timeBodyGyroscopeJerkMean_xAxis - Mean of the time-domain body gyroscope Jerk signals for the X axis
timeBodyGyroscopeJerkMean_yAxis - Mean of the time-domain body gyroscope Jerk signals for the Y axis
timeBodyGyroscopeJerkMean_zAxis - Mean of the time-domain body gyroscope Jerk signals for the Z axis
timeBodyAccelerationMagnitudeMean - Mean of the time-domain body acceleration signals magnitude
timeGravityAccelerationMagnitudeMean - Mean of the time-domain gravity acceleration signals magnitude
timeBodyAccelerationJerkMagnitudeMean - Mean of the time-domain body acceleration Jerk signals magnitude
timeBodyGyroscopeMagnitudeMean - Mean of the time-domain body gyroscope signals magnitude 
timeBodyGyroscopeJerkMagnitudeMean - Mean of the time-domain body gyroscope Jerk signals magnitude 
frequencyBodyAccelerationMean_xAxis - Mean of the frequency-domain body acceleration signals for the X axis
frequencyBodyAccelerationMean_yAxis - Mean of the frequency-domain body acceleration signals for the Y axis
frequencyBodyAccelerationMean_zAxis - Mean of the frequency-domain body acceleration signals for the Z axis
frequencyBodyAccelerationJerkMean_xAxis - Mean of the frequency-domain body acceleration Jerk signals for the X axis
frequencyBodyAccelerationJerkMean_yAxis - Mean of the frequency-domain body acceleration Jerk signals for the Y axis
frequencyBodyAccelerationJerkMean_zAxis - Mean of the frequency-domain body acceleration Jerk signals for the Z axis
frequencyBodyGyroscopeMean_xAxis - Mean of the frequency-domain body gyroscope signals for the X axis
frequencyBodyGyroscopeMean_yAxis - Mean of the frequency-domain body gyroscope signals for the Y axis
frequencyBodyGyroscopeMean_zAxis - Mean of the frequency-domain body gyroscope signals for the Z axis
frequencyBodyAccelerationMagnitudeMean - Mean of the frequency-domain body acceleration signals magnitude
frequencyBodyAccelerationJerkMagnitudeMean - Mean of the frequency-domain body acceleration Jerk signals magnitude
frequencyBodyGyroscopeMagnitudeMean - Mean of the frequency-domain body gyroscope signals magnitude 
frequencyBodyGyroscopeJerkMagnitudeMean - Mean of the frequency-domain body gyroscope Jerk signals magnitude 
timeBodyAccelerationStd_xAxis - Standard deviation of the time-domain body acceleration signals for the X axis
timeBodyAccelerationStd_yAxis - Standard deviation of the time-domain body acceleration signals for the Y axis
timeBodyAccelerationStd_zAxis - Standard deviation of the time-domain body acceleration signals for the Z axis
timeGravityAccelerationStd_xAxis - Standard deviation of the time-domain gravity acceleration signals for the X axis
timeGravityAccelerationStd_yAxis - Standard deviation of the time-domain gravity acceleration signals for the Y axis
timeGravityAccelerationStd_zAxis - Standard deviation of the time-domain gravity acceleration signals for the Z axis
timeBodyAccelerationJerkStd_xAxis - Standard deviation of the time-domain body acceleration Jerk signals for the X axis
timeBodyAccelerationJerkStd_yAxis - Standard deviation of the time-domain body acceleration Jerk signals for the Y axis
timeBodyAccelerationJerkStd_zAxis - Standard deviation of the time-domain body acceleration Jerk signals for the Z axis
timeBodyGyroscopeStd_xAxis - Standard deviation of the time-domain body gyroscope signals for the X axis
timeBodyGyroscopeStd_yAxis - Standard deviation of the time-domain body gyroscope signals for the Y axis
timeBodyGyroscopeStd_zAxis - Standard deviation of the time-domain body gyroscope signals for the Z axis
timeBodyGyroscopeJerkStd_xAxis - Standard deviation of the time-domain body gyroscope Jerk signals for the X axis
timeBodyGyroscopeJerkStd_yAxis - Standard deviation of the time-domain body gyroscope Jerk signals for the Y axis
timeBodyGyroscopeJerkStd_zAxis - Standard deviation of the time-domain body gyroscope Jerk signals for the Z axis
timeBodyAccelerationMagnitudeStd - Standard deviation of the time-domain body acceleration signals magnitude
timeGravityAccelerationMagnitudeStd - Standard deviation of the time-domain gravity acceleration signals magnitude
timeBodyAccelerationJerkMagnitudeStd - Standard deviation of the time-domain body acceleration Jerk signals magnitude
timeBodyGyroscopeMagnitudeStd - Standard deviation of the time-domain body gyroscope signals magnitude 
timeBodyGyroscopeJerkMagnitudeStd - Standard deviation of the time-domain body gyroscope Jerk signals magnitude 
frequencyBodyAccelerationStd_xAxis - Standard deviation of the frequency-domain body acceleration signals for the X axis
frequencyBodyAccelerationStd_yAxis - Standard deviation of the frequency-domain body acceleration signals for the Y axis
frequencyBodyAccelerationStd_zAxis - Standard deviation of the frequency-domain body acceleration signals for the Z axis
frequencyBodyAccelerationJerkStd_xAxis - Standard deviation of the frequency-domain body acceleration Jerk signals for the X axis
frequencyBodyAccelerationJerkStd_yAxis - Standard deviation of the frequency-domain body acceleration Jerk signals for the Y axis
frequencyBodyAccelerationJerkStd_zAxis - Standard deviation of the frequency-domain body acceleration Jerk signals for the Z axis
frequencyBodyGyroscopeStd_xAxis - Standard deviation of the frequency-domain body gyroscope signals for the X axis
frequencyBodyGyroscopeStd_yAxis - Standard deviation of the frequency-domain body gyroscope signals for the Y axis
frequencyBodyGyroscopeStd_zAxis - Standard deviation of the frequency-domain body gyroscope signals for the Z axis
frequencyBodyAccelerationMagnitudeStd - Standard deviation of the frequency-domain body acceleration signals magnitude
frequencyBodyAccelerationJerkMagnitudeStd - Standard deviation of the frequency-domain body acceleration Jerk signals magnitude
frequencyBodyGyroscopeMagnitudeStd - Standard deviation of the frequency-domain body gyroscope signals magnitude 
frequencyBodyGyroscopeJerkMagnitudeStd - Standard deviation of the frequency-domain body gyroscope Jerk signals magnitude
