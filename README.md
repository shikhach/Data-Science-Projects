This is a repository for Coursera "Getting and Cleaning data" course project.

DataSet
========
The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

x_test.txt file has 561 unlabeled features.
y_test.txt file has activity labels. 
The test subjects are in the subject_test.txt file.
(The same holds for the training set)

run_analysis.R
==============

A file called run_analysis.R does the following: 
# Creates a folder "CouseraWeek4Project", checks for "getdata_dataset.zip" if not found downloads and unzips it. Extracts UCI HAR Dataset folder.
# Reads feature file.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Combines columns of X_Test, Y_Test, subject_Test files in one single data table. (Does the same for training data)
# Merges train and test data for records with "mean" or "std" strings. 
# Gives descriptive activity names to name the activities in the data set
# Labels the data set with descriptive variable names
# Creates and writes a data set "tidyDataSet.txt" with the average of each variable for each activity and subject

tidyDataSet.txt
===============
Contains mean of each row (average of each variable for each activity and each subject). This dataset is written to a file called tidyDataSet.txt.

Code Book
=========
CodeBook.md file describes the resulting data and variables.