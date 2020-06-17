#This script generates a tidy data set showing the averages of different variables per activity type and subject from data
#from the 'Human Activity Recognition Using Smartphones Data Set' data set hosted at
#http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#Load DPLYR library
library(dplyr)
#Vector definind the fields widths
width <- c(rep(16,561))

#Read the raw measurement data from working directory
test <- read.fwf("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt",width)
train <- read.fwf("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt",width)
#Read variable names from working directory and assign them to measurements data sets
features <- read.delim("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt",sep=" ",header=FALSE)
names(test) <- features$V2
names(train) <- features$V2
#Extract only the variables that contain means or standard deviations
test_mean_sd <- select(test,contains("-mean()") | contains("std()"))
train_mean_sd <- select(train,contains("-mean()") | contains("std()"))

#Read the subjects and activity types data from working directory
test_subjects <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
train_subjects <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
test_activities <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
train_activities <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
activity_names <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")

#For the subjects data, rename default column name to 'subject'
names(test_subjects) <- "subject"
names(train_subjects) <- "subject"

#Change the activity type numerical values to the corresponding labels and add as new variable to the subjects data frame
test_subjects$activity <- mutate(test_activities, V1 = activity_names$V2[V1])$V1
train_subjects$activity <- mutate(train_activities, V1 = activity_names$V2[V1])$V1

#Join the subject/activity data frame with the measurements data set
test_mean_sd <- cbind(test_subjects,test_mean_sd)
train_mean_sd <- cbind(train_subjects,train_mean_sd)

#Merge the test and train data sets
merged_mean_sd <- rbind(test_mean_sd,train_mean_sd)

#Rename all variables to meaningful names
names(merged_mean_sd) <- sub("tBody","timeBody",names(merged_mean_sd),)
names(merged_mean_sd) <- sub("tGravity","timeGravity",names(merged_mean_sd),)
names(merged_mean_sd) <- sub("fBody","frequencyBody",names(merged_mean_sd),)
names(merged_mean_sd) <- sub("Acc","Acceleration",names(merged_mean_sd),)
names(merged_mean_sd) <- sub("Gyro","Gyroscope",names(merged_mean_sd),)
names(merged_mean_sd) <- sub("Mag","Magnitude",names(merged_mean_sd),)
names(merged_mean_sd) <- sub("BodyBody","Body",names(merged_mean_sd),)
names(merged_mean_sd) <- sub("-mean\\(\\)","Mean",names(merged_mean_sd),)
names(merged_mean_sd) <- sub("-std\\(\\)","Std",names(merged_mean_sd),)
names(merged_mean_sd) <- sub("-X","_xAxis",names(merged_mean_sd),)
names(merged_mean_sd) <- sub("-Y","_yAxis",names(merged_mean_sd),)
names(merged_mean_sd) <- sub("-Z","_zAxis",names(merged_mean_sd),)

#Create a tidy data frame with the average values for each variable, per activity type and per subject
averages <-
  merged_mean_sd %>%
    group_by(activity,subject) %>%
        summarise_all(funs(mean))

#Return the result tidy data frame
averages