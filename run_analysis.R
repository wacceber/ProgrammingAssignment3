### You should create one R script called run_analysis.R that does the following.
### 
### Merges the training and the test sets to create one data set.
### Extracts only the measurements on the mean and standard deviation for each measurement.
### Uses descriptive activity names to name the activities in the data set
### Appropriately labels the data set with descriptive variable names.
### From the data set in step 4, creates a second, independent tidy data set 
###   with the average of each variable for each activity and each subject.

run_analysis <- function() {
     ## read 2 data files     
     ## 1. UCI HAR Dataset\test\X_test
     ## 2. UCI HAR Dataset\train\X_train
     testdat <- read.table("UCI HAR Dataset\\test\\X_test.txt")
     traindat <- read.table("UCI HAR Dataset\\train\\X_train.txt")
     

     ## The features file contains the column names for the 561 variables
     ## Read the features file and put into a vector
     features <- read.table("UCI HAR Dataset\\features.txt")
     variables <- features[, "V2"]
     
     
     ##  rename the columns in the test and train data sets
     colnames(testdat) <- variables
     colnames(traindat) <- variables
     
     ## create a new data frame for test and train data 
     ## that conatins only the 
     ## mean and std columns in the data set
     ## create a vector with the column indexes
     ## (remove)subcols <- c(grep("mean", names(testdat2)), grep("std", names(testdat2)))
     testdat <- testdat[c(grep("mean\\(|std", names(testdat)))]
     traindat <- traindat[c(grep("mean\\(|std", names(testdat)))]
      
     ## read 2 label files that contain the activity codes    
     ## 1. UCI HAR Dataset\test\y_test
     ## 2. UCI HAR Dataset\train\y_train     
     testactivitydatset <- read.table("UCI HAR Dataset\\test\\y_test.txt")
     trainactivitydatset <- read.table("UCI HAR Dataset\\train\\y_train.txt")
     

     ## Add a column to the test and train data set for the activity codes
     ##   named 'activitycode' to each data table using the activity codes data
     testdat$activitycode <- c(testactivitydatset$V1) 
     traindat$activitycode <- c(trainactivitydatset$V1)
     
     ## Add a column to the test and train activity sets for the activity label
     activitylabels <- read.table("UCI HAR Dataset\\activity_labels.txt")
     colnames(activitylabels) <- c("activitycode", "activitylabel")
     
     testdat <- merge(x = testdat, y = activitylabels, by = "activitycode", all = TRUE)
     traindat <- merge(x = traindat, y = activitylabels, by = "activitycode", all = TRUE)
     
     ## Add a column that conatins the subject id
     ## Extract the subject data
     testsubjectdatset <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
     trainsubjectdatset <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
          
      ##  merge the test and train data sets
     # testtrainmerge <- merge(x = testdat, y = traindat, all = TRUE)
    
     # intersect(names(traindat), names(testdat))
     # variables
     # activitylabels
     head(traindat, n=1)
          # c(dim(testdat), dim(testactivitydat), dim(traindat), dim(trainactivitydat))
          # head(testsubjectdat, n=25)
}