The data for the project is available at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Unpacking the zip file there´s the following files (as described in the README.txt):
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

You should save the run_analysis.R file at the same folder as features.txt and activity_labels.txt (and folders train and test).

The run_analysis script creates the following variables:

* test_set and train_set : Data Frames (the test and train sets, read from /test/X_test.txt and /train/X_train.txt)
* merged_data : Data frame (merges the test_set and train_set)
* subset_data : Data frame (extracts from the merged_data only the measurements on the mean and standard deviation for each measurement, added with subject and activity with descriptive names)
* average_data : Data frame (the average of each variable for each activity and each subject from the subset_data)
