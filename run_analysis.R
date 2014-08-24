###Project for JH3 Getting and Cleaning Data
##The goal is to do the following. 
#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names. 
#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

##load labels and features
activity <- read.table("~/UCI HAR Dataset/activity_labels.txt", quote="\"")
names(activity)<-c("level","name")

features <- read.table("~/UCI HAR Dataset/features.txt", quote="\"")
names(features)<-c("id","label")
selectFeatures <- subset(features, grepl('-(mean|std)[(]',features[,2]))

##load training data
train <- read.table("~/UCI HAR Dataset/train/X_train.txt", quote="\"")
names(train) <- features$label
selectTrain <- train[,selectFeatures$id]

y_train <- read.table("~/UCI HAR Dataset/train/y_train.txt", quote="\"")
names(y_train)<-c("activity")

subject_train <- read.table("~/UCI HAR Dataset/train/subject_train.txt", quote="\"")
names(subject_train) <- c("subject") 

train = cbind(subject_train,y_train,selectTrain)
#Uses descriptive activity names to name the activities in the training data set
train$activity <- activity$name[match(train$activity,activity$level)]

##load testing data
test <- read.table("~/UCI HAR Dataset/test/X_test.txt", quote="\"")
names(test) <- features$label
selectTest <- test[,selectFeatures$id]

y_test <- read.table("~/UCI HAR Dataset/test/y_test.txt", quote="\"")
names(y_test)<-c("activity")

subject_test <- read.table("~/UCI HAR Dataset/test/subject_test.txt", quote="\"")
names(subject_test) <- c("subject")

test = cbind(subject_test,y_test,selectTest)
#Uses descriptive activity names to name the activities in the testing data set
test$activity <- activity$name[match(test$activity,activity$level)]

#Merges the training and the test sets to create one data set.
data <- rbind(train,test)

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
tidyData = aggregate(data[,3:68], by=list(activity = data$activity, subject=data$subject), mean)

#Make tidy variable names
tidyNames <- names(tidyData)
tidyNames <- gsub('-mean', 'Mean', tidyNames) 
tidyNames <- gsub('-std', 'Std', tidyNames) 
tidyNames <- gsub('[()-]', '', tidyNames) 
tidyNames <- gsub('BodyBody', 'Body', tidyNames) 
names(tidyData) <- tidyNames

write.table(tidyData, file = "./tidyData.txt", sep="\t")
