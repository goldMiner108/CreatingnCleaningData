#CodeBook

##Data Source

A full description can be found at

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##List of Selected Features
There are 561 features in the original data (see features.txt). After the cleaning process, only 66 features remained. We are interested in the averages of each variable for each subject and each activity. Since we have 30 subjects and 6 activities, the total observations of the tidy data will be 180 (30x6=180)


```r
tidyData <- read.delim("~/UCI HAR Dataset/tidyData.txt")
names(tidyData)[3:68]
```

```
##  [1] "tBodyAccMeanX"        "tBodyAccMeanY"        "tBodyAccMeanZ"       
##  [4] "tBodyAccStdX"         "tBodyAccStdY"         "tBodyAccStdZ"        
##  [7] "tGravityAccMeanX"     "tGravityAccMeanY"     "tGravityAccMeanZ"    
## [10] "tGravityAccStdX"      "tGravityAccStdY"      "tGravityAccStdZ"     
## [13] "tBodyAccJerkMeanX"    "tBodyAccJerkMeanY"    "tBodyAccJerkMeanZ"   
## [16] "tBodyAccJerkStdX"     "tBodyAccJerkStdY"     "tBodyAccJerkStdZ"    
## [19] "tBodyGyroMeanX"       "tBodyGyroMeanY"       "tBodyGyroMeanZ"      
## [22] "tBodyGyroStdX"        "tBodyGyroStdY"        "tBodyGyroStdZ"       
## [25] "tBodyGyroJerkMeanX"   "tBodyGyroJerkMeanY"   "tBodyGyroJerkMeanZ"  
## [28] "tBodyGyroJerkStdX"    "tBodyGyroJerkStdY"    "tBodyGyroJerkStdZ"   
## [31] "tBodyAccMagMean"      "tBodyAccMagStd"       "tGravityAccMagMean"  
## [34] "tGravityAccMagStd"    "tBodyAccJerkMagMean"  "tBodyAccJerkMagStd"  
## [37] "tBodyGyroMagMean"     "tBodyGyroMagStd"      "tBodyGyroJerkMagMean"
## [40] "tBodyGyroJerkMagStd"  "fBodyAccMeanX"        "fBodyAccMeanY"       
## [43] "fBodyAccMeanZ"        "fBodyAccStdX"         "fBodyAccStdY"        
## [46] "fBodyAccStdZ"         "fBodyAccJerkMeanX"    "fBodyAccJerkMeanY"   
## [49] "fBodyAccJerkMeanZ"    "fBodyAccJerkStdX"     "fBodyAccJerkStdY"    
## [52] "fBodyAccJerkStdZ"     "fBodyGyroMeanX"       "fBodyGyroMeanY"      
## [55] "fBodyGyroMeanZ"       "fBodyGyroStdX"        "fBodyGyroStdY"       
## [58] "fBodyGyroStdZ"        "fBodyAccMagMean"      "fBodyAccMagStd"      
## [61] "fBodyAccJerkMagMean"  "fBodyAccJerkMagStd"   "fBodyGyroMagMean"    
## [64] "fBodyGyroMagStd"      "fBodyGyroJerkMagMean" "fBodyGyroJerkMagStd"
```

##Notes 
* Features are normalized and bounded within [-1,1].

##README.md
The goal of the project and keys to the processing steps can be found in README.md
