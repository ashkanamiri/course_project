## STEP 1 - Reading activity labels
print("## STEP 1 - Reading activity labels")
activity.labels <- as.matrix(read.table("./dataset/activity_labels.txt",header=FALSE,sep=" "))
activity.labels <- as.character(activity.labels[,2])

## STEP 2 - Reading the list of features and creating variable names
print("## STEP 2 - Reading the list of features and creating variable names")

features <- read.table("./dataset/features.txt",header=FALSE,sep=" ")
features <- as.character(features[,2])

MakeVariableName <- function(argu){
  argu <- gsub("\\(\\)","",argu) #remove paranthesis
  argu <- gsub("\\(",".",argu) #remove paranthesis
  argu <- gsub("\\)","",argu) #remove paranthesis
  variable.name=""#variable name to be returned
  for (c in 1:nchar(argu)){
    subs <- substring(argu,c,c)#read the letter in index c
    if(grepl(subs,tolower(subs))){#if the letter is uppercase precede it with a dot
      variable.name <- paste(variable.name,subs,sep="")      
    }else{
      variable.name <- paste(variable.name,tolower(subs),sep=".")
    }
  }
  variable.name <- gsub("-",".",variable.name) #remove hyphen
  variable.name <- gsub(",",".",variable.name) #remove comma
  variable.name <- gsub("\\.\\.",".",variable.name) #remove double dots
  variable.name <- gsub("\\.\\.",".",variable.name) #remove double dots
}

variable.names<-as.character(sapply(features, MakeVariableName))


## STEP 3 - Identifying the list of features pertaining to mean and sandard deviation
print("## STEP 3 - Identifying the list of features pertaining to mean and sandard deviation")
mean.std.features.boolean <- (grepl("mean",variable.names)|grepl("std",variable.names))&(!grepl("mean.freq",variable.names))&(!grepl("mean.gravity",variable.names))|(grepl("gravity.mean",variable.names))

## STEP 4 - Reading data from training set
print("## STEP 4 - Reading data from training set")
fileName <- './dataset/train/X_train.txt'
x.train.string <- readChar(fileName, file.info(fileName)$size)#reading X_train as a string
x.train.string<-gsub("  "," ",x.train.string)#cleaning data from double-spacing
fileConn<-file("temp.txt")#opening a file connection
writeLines(x.train.string, fileConn)#writing the result to a temporary file
close(fileConn)#closing the connection
rm(x.train.string)#freeing some memory
x.train <- as.data.frame(read.table("./temp.txt",header=FALSE,sep=" ",colClasses=c("numeric")))#reading X_train from temp file
if(is.na(x.train[1,1])){x.train<-x.train[,2:ncol(x.train)]}#removing the first column if empty
names(x.train)<-variable.names#adding feature names to columns
unlink("temp.txt", recursive = FALSE)#remove temporary file

y.train <- as.data.frame(read.table("./dataset/train/y_train.txt",header=FALSE,sep=" ",col.names=c("activity"),colClasses=c("numeric")))
y.train[,1]<-activity.labels[y.train[,1]]#converting activity numbers to activity names

subjects.train <- as.data.frame(read.table("./dataset/train/subject_train.txt",header=FALSE,sep=" ",col.names=c("subject"),colClasses=c("numeric")))

## Step 5 - Extracting mean- and std-related features from training set and forming a new dataframe
print("## Step 5 - Extracting mean- and std-related features from training set and forming a new dataframe")
extract.mean.std.train <- x.train[,mean.std.features.boolean]

## Step 6 - Binding data available from the training set 
print("## Step 6 - Binding data available from the training set")
extract.train <- cbind(y.train,subjects.train,extract.mean.std.train)


## STEP 7 - Reading data from testing set
print("## STEP 7 - Reading data from testing set")
fileName <- './dataset/test/X_test.txt'
x.test.string <- readChar(fileName, file.info(fileName)$size)#reading X_test as a string
x.test.string<-gsub("  "," ",x.test.string)#cleaning data from double-spacing
fileConn<-file("temp.txt")#opening a file connection
writeLines(x.test.string, fileConn)#writing the result to a temporary file
close(fileConn)#closing the connection
rm(x.test.string)#freeing some memory
x.test <- as.data.frame(read.table("./temp.txt",header=FALSE,sep=" ",colClasses=c("numeric")))#reading X_test from temp file
if(is.na(x.test[1,1])){x.test<-x.test[,2:ncol(x.test)]}#removing the first column if empty
names(x.test)<-variable.names#adding feature names to columns

unlink("temp.txt", recursive = FALSE)#remove temporary file


y.test <- as.data.frame(read.table("./dataset/test/y_test.txt",header=FALSE,sep=" ",col.names=c("activity"),colClasses=c("numeric")))
y.test[,1]<-activity.labels[y.test[,1]]#converting activity numbers to activity names

subjects.test <- as.data.frame(read.table("./dataset/test/subject_test.txt",header=FALSE,sep=" ",col.names=c("subject"),colClasses=c("numeric")))

## Step 8 - Extracting mean- and std-related features from testing set and forming a new dataframe
print("## Step 8 - Extracting mean- and std-related features from testing set and forming a new dataframe")
extract.mean.std.test <- x.test[,mean.std.features.boolean]

## Step 9 - Binding data available from the training set 
print("## Step 9 - Binding data available from the training set")
extract.test <- cbind(y.test,subjects.test,extract.mean.std.test)

## Step 10 - Binding the whole data from training and testing sets into one
print("## Step 10 - Binding the whole data from training and testing sets into one")
dataset.train <- cbind(y.train,subjects.train,x.train)#biniding data from the training set
dataset.test <- cbind(y.test,subjects.test,x.test)#binding the data from the testing set
datasets.combined <- rbind(dataset.train,dataset.test)#combining the two sets into one

## Step 11 - Binding extracted data (mean- and std-related) from training and testing sets into one
print("## Step 11 - Binding extracted data (mean- and std-related) from training and testing sets into one")
datasets.extracted.combined <- rbind(extract.train,extract.test)


## Step 12 - Creating the dataset by averaging each measurement for each activity and each subject
print("## Step 12 - Creating the dataset by averaging each measurement for each activity and each subject")
library("sqldf")#loading sqldf to select data
subjects.list <- unique(datasets.extracted.combined$subject)
num.rows=length(activity.labels)*length(subjects.list)#number of rows of the dataframe
num.cols=ncol(datasets.extracted.combined)#number of columns of the dataframe
tidy.dataset <- data.frame(matrix(nrow=num.rows, ncol=num.cols))
names(tidy.dataset)<-names(datasets.extracted.combined)
for (i in 1:length(activity.labels)){
  for (j in 1:length(subjects.list)){
    ind <- (i-1)*length(subjects.list)+j#index of the dataframe to be filled
    cat(".")
    sql.code <- "SELECT * from 'datasets.extracted.combined' WHERE activity='"
    sql.code <- paste(sql.code,activity.labels[i],"' AND subject='",subjects.list[j],"'",sep="")      
    dum <- sqldf(sql.code)
    tidy.dataset[ind,1]<-activity.labels[i]
    tidy.dataset[ind,2]<- subjects.list[j]
    tidy.dataset[ind,3:ncol(dum)] <- colMeans(dum[,3:ncol(dum)])
  }
}
cat("\n")

## Step 13 - Writing tidy.dataset to disk
print("## Step 13 - Writing tidy.dataset to disk")
write.table(tidy.dataset, file = "tidy_dataset.csv", sep = ",", row.names=FALSE,col.names = TRUE,qmethod = "double")


