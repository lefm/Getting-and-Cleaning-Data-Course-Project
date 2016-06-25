# Getting and Cleaning Data Course Project

This is the repo for the Coursera Getting and Cleaning Data Course Project

## The Project 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

-

This repo contains a script called run_analysis.R that does the following:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

There´s also a codebook (CodeBook.md) describing the variables, the data, and any transformations or work performed to clean up the data.

The Tidy Data Sets available are:
* subset_data.csv 
The measurements on the mean and standard deviation for each measurement, added with subject and activity with descriptive names

* average_data.csv 
The average of each variable for each activity and each subject from the subset_data