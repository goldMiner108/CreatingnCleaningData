#Getting and Cleaning Data

##Coursera Course Project

The goal of this project is to create a R script called **run_analysis.R** that does the following,

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each             measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names.

5. Creates a second, independent tidy data set with the average of each                 variable for each activity and each subject. 

##Raw data vs tidy data
Original data can be found at 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

There are 561 features in the unprocessed data. After the cleaning process, the final tidy data (**tidyData.txt**) only contains 66 features. 

##Files in the repository
* README.md
* CodeBook.md
* run_analysis.R
* tidyData.txt

##Keys to Processing Steps

1. Download and unzip the original data at your current working directory 

2. Use *grepl('-(mean|std)[(]',features[,2])* to find the subset of features

3. Use **cbind()** to add subject and activity to training and testing data

4. Use **rbind()** to merge training and testing data

5. Find the averages of selected features with **aggregate()**

6. Use **gsub()** to make tidy variable names

##CodeBook
The list of selected features can be found in CodeBook.md




