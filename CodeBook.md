Getting and Cleaning Data Project
Author: Kamran Aghayev 

Source Data
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data Set Information 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

features <- features.txt : 561 rows, 2 columns 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
activities <- activity_labels.txt : 6 rows, 2 columns 
List of activities performed when the corresponding measurements were taken and its codes (labels)
subject_test <- test/subject_test.txt : 2947 rows, 1 column 
contains test data of 9/30 volunteer test subjects being observed
x_test <- test/X_test.txt : 2947 rows, 561 columns 
contains recorded features test data
y_test <- test/y_test.txt : 2947 rows, 1 columns 
contains test data of activities’code labels
subject_train <- test/subject_train.txt : 7352 rows, 1 column 
contains train data of 21/30 volunteer subjects being observed
x_train <- test/X_train.txt : 7352 rows, 561 columns 
contains recorded features train data
y_train <- test/y_train.txt : 7352 rows, 1 columns 
contains train data of activities’code labels
