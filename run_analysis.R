mainDir = getwd()
subDir = "CouseraWeek4Project"

if (file.exists(subDir)){
  setwd(file.path(mainDir, subDir))
} else {
  dir.create(file.path(mainDir, subDir))
  setwd(file.path(mainDir, subDir))
}

data= "getdata_dataset.zip"
if(!file.exists(data))  {
  downloadLink= "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(downloadLink, data)
  unzip(data) 
}

features = read.table("UCI HAR Dataset/features.txt")

#Extracts only the measurements on the mean and standard deviation for each measurement
meanAndStdFeatures = grep("-(mean|std)", features[, 2])

XTrain = read.table("UCI HAR Dataset/train/X_train.txt")
YTrain = read.table("UCI HAR Dataset/train/Y_train.txt")
subjectTrain = read.table("UCI HAR Dataset/train/subject_train.txt")
train = cbind(subjectTrain, XTrain[meanAndStdFeatures], YTrain)

XTest = read.table("UCI HAR Dataset/test/X_test.txt")
YTest = read.table("UCI HAR Dataset/test/Y_test.txt")
subjectTest = read.table("UCI HAR Dataset/test/subject_test.txt")
test = cbind(subjectTest, XTest[meanAndStdFeatures], YTest)

# merge train,test datasets for only rows containing strings 'mean' or 'std' 
mergedData= rbind(train,test)
colnames(mergedData) = c("subject", features[meanAndStdFeatures, 2], "activity") 

# Giving descriptive activity names to name the activities in the data set
activities = read.table("UCI HAR Dataset/activity_labels.txt")
mergedData$activity = factor(mergedData$activity, levels = activities[,1], labels = activities[,2])

# label the data set with descriptive variable names
mergedData$subject = as.factor(mergedData$subject)

# creates a data set with the average of each variable for each activity and subject
newDataSet = melt(mergedData, id = c("subject", "activity"))
mergedDataMean = dcast(newDataSet, subject + activity ~ variable, mean)
write.table(mergedDataMean, "tidyDataSet.txt", row.names = FALSE, quote = FALSE)
