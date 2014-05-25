%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DETAILS ON THE PREPARATION OF THE TIDY DATASET --- CREATED ON  SAT MAY 24 14:17:00 2014 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ASHKAN AMIRI; MCMASTER UNIVERSITY; CANADA.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

This README file describes the steps carried out in "run_analysis.R" to create the tidy dataset from the original dataset (refer to CodeBook.md).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Steps taken:

## STEP 1 - Reading activity labels
## STEP 2 - Reading the list of features and creating variable names
## STEP 3 - Identifying the list of features pertaining to mean and sandard deviation
## STEP 4 - Reading data from training set
    * reading X_train as a string
    * cleaning data from double-spacing
    * opening a file connection
    * writing the result to a temporary file
    * reading cleaned X_train from temp file
    * removing the first column if empty
    * adding feature names to columns
    * remove temporary file
    * replacing activity numbers with activity labels
## Step 5 - Extracting mean- and std-related features from training set and forming a new dataframe
## Step 6 - Binding data available from the training set 
## STEP 7 - Reading data from testing set
    * reading X_test as a string
    * cleaning data from double-spacing
    * opening a file connection
    * writing the result to a temporary file
    * reading cleaned X_test from temp file
    * removing the first column if empty
    * adding feature names to columns
    * remove temporary file
    * replacing activity numbers with activity labels
## Step 8 - Extracting mean- and std-related features from testing set and forming a new dataframe
## Step 9 - Binding data available from the training set 
## Step 10 - Binding the whole data from training and testing sets into one
    * biniding data from the training set
    * binding the data from the testing set
    * combining the two sets into one
## Step 11 - Binding extracted data (mean- and std-related) from training and testing sets into one
## Step 12 - Creating the tidy dataset by averaging each measurement for each activity and each subject
    * using sqldf records are selected and mean value of each column is recorded in the tidy dataset
## Step 13 - Writing tidy dataset to disk


