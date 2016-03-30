==================================================================
Assignment Name:  Programming Assignment 3
         Course:  Getting and Cleaning Data
==================================================================
   Student Name:  Rebecca Love
==================================================================
This is the programming assignment for Week 4 of the 
Getting and Cleaning Data course required for the 
Data Science Specialty on Coursera. The instructions for the 
assignment are in the course online. 
==================================================================

This repository contains the following files:
==================================================================
- 'README.txt': (this document)

- 'run_analysis.R': An R script

- 'CodeBook.md': Modifies and updates the available codebooks with the data to 
		 indicate all the variables and summaries calculated, along with 
		 units, and any other relevant information. 

- 'UCI HAR Dataset': Contains the data that will be processed by run_analysis.R 


To execute the script:
1. Place run_analysis.R file in the same directory that contains the UCI HAR Dataset folder.
1. Set the working directory of R to the directory that contains the UCI HAR Dataset folder and run_analysis.R file.
3. In the console, enter the following command: 
     source("run_analysis.R")
4. In the console, enter the following command:
     run_analysis()
The result of the script is an text file called Assignment3 saved to the working directory.

==================================================================
The steps taken to produce the final output are as follows:
     ## read 2 data files     
     ## 1. UCI HAR Dataset\test\X_test
     ## 2. UCI HAR Dataset\train\X_train
     
     ## The features file contains the column names for the 561 variables
     ## Read the features file and put into a vector
     
     ##  rename the columns in the test and train data sets
     
     ## create a new data frame for test and train data 
     ## that conatins only the 
     ## mean and std columns in the data set
     ## create a vector with the column indexes
     ## (remove)subcols <- c(grep("mean", names(testdat2)), grep("std", names(testdat2)))
     
     ## read 2 label files that contain the activity codes    
     ## 1. UCI HAR Dataset\test\y_test
     ## 2. UCI HAR Dataset\train\y_train  
     
     ## Add a column to the test and train data set for the activity codes
     ##   named 'activitycode' to each data table using the activity codes data
     
     ## Add a column to the test and train activity sets for the activity label
     
     ## Add a column that conatins the subject id
     ## Extract the subject data
     
     ##  merge the test and train data sets
      
     ##  Group on subjectcode and activitylabel and average the data on the groups
     
     ## clean up column names
     ## Update subject and activity columns
     ## remove extraneous characters from measures column names
     
     ## output the final results to a text file in the working directory
==================================================================