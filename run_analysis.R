###############################################################################
#                Getting and Cleaning Data Course Project                     #
###############################################################################

library(dplyr)

# Creating data frames for the test and training sets
test_set <- read.table("./test/X_test.txt")
train_set <- read.table("./train/X_train.txt")

# Merging the training and the test sets to create one data set.
merged_data <- rbind(test_set, train_set)

# Labeling the column names
colnames(merged_data) <- as.character(read.table("features.txt")[,2])

# Extracting only the measurements on the mean and standard deviation 
# for each measurement. 
subset_data <- subset(merged_data, select = grep("(mean\\(\\)|std\\(\\))", 
                                                 colnames(merged_data)))

# Reading the subjects and activities
test_subject <- read.table("./test/subject_test.txt", col.names = "subject")
test_activity <- read.table("./test/y_test.txt", col.names = "activity")
train_subject <- read.table("./train/subject_train.txt", col.names = "subject")
train_activity <- read.table("./train/y_train.txt", col.names = "activity")
activity_labels <- read.table("activity_labels.txt", 
                              col.names = c("activity", "activity_label"))

# Adding subject and activity to the data set
subjects <- rbind(test_subject, train_subject)
activities <- rbind(test_activity, train_activity)
subset_data <- cbind(subject = subjects, activity = activities, subset_data)

# Using descriptive activity names to name the activities in the data set
subset_data$activity <- activity_labels[,2][activities[,1]]

# Appropriately labels the data set with descriptive variable names
colnames(subset_data) <- sub("\\(\\)", "", colnames(subset_data))
colnames(subset_data) <- sub("-", "", colnames(subset_data))
colnames(subset_data) <- sub("-", "_", colnames(subset_data))
colnames(subset_data) <- sub("tBody", "timeBody", colnames(subset_data))
colnames(subset_data) <- sub("tGravity", "timeGravity", colnames(subset_data))
colnames(subset_data) <- sub("fBody", "frequencyBody", colnames(subset_data))
colnames(subset_data) <- sub("Acc", "Accelerometer", colnames(subset_data))
colnames(subset_data) <- sub("Gyro", "Gyroscope", colnames(subset_data))
colnames(subset_data) <- sub("mean", "Mean", colnames(subset_data))
colnames(subset_data) <- sub("std", "StdDev", colnames(subset_data))
colnames(subset_data) <- sub("BodyBody", "Body", colnames(subset_data))

# From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
average_data <- group_by(subset_data, subject, activity)
average_data <- summarize_each(average_data, funs(mean))
