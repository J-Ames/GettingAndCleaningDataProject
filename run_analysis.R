## load needed libraries
require(plyr)
require(dplyr)

## increase memory limit needed for large text files
memory.limit(size=4095)
 
## set working directory
setwd("~/Coursera/Cleaning Data/Project/UCI HAR Dataset")

## read tables, master file already unzipped
xtest<-read.table("./test/X_test.txt")
xtrain<-read.table("./train/X_train.txt")
xtrainsubj<-read.table("./train/subject_train.txt")
xtrainactivity<-read.table("./train/y_train.txt")
xtestsubj<-read.table("./test/subject_test.txt")
xtestactivity<-read.table("./test/y_test.txt")
features<-read.table("features.txt")
activitylabels<-read.table("activity_labels.txt")

## set column names
colnames(xtest)<-t(features[2])
colnames(xtrain)<-t(features[2])
colnames(activitylabels)=c("ActivityID","ActivityName")
 
## add activity and subject columns to train and test tables
xtrain$ActivityID<-xtrainactivity[,1]
xtrain$SubjectID<-xtrainsubj[,1]
xtest$ActivityID<-xtestactivity[,1]  
xtest$SubjectID<-xtestsubj[,1]
 
## combine test and train tables into one table
combinetbl<-bind_rows(xtest,xtrain)

## create new table with just the columns pertaining to mean and standard deviation values
tblmeanstd<-combinetbl[,grepl("mean\\(|std|SubjectID|ActivityID", names(combinetbl))]

## clean up column names 
names(tblmeanstd)<-gsub("-mean()","_Mean",names(tblmeanstd))
names(tblmeanstd)<-gsub("-std()","_StdDev",names(tblmeanstd))
names(tblmeanstd)<-gsub("-","_",names(tblmeanstd))
names(tblmeanstd)<-gsub("tBody","Time_Body",names(tblmeanstd))
names(tblmeanstd)<-gsub("fBody","Freq_Body",names(tblmeanstd))
names(tblmeanstd)<-gsub("\\(|\\)","",names(tblmeanstd))
names(tblmeanstd)<-gsub("tGravity","Time_Gravity",names(tblmeanstd))
names(tblmeanstd)<-gsub("Acc","Acceleration",names(tblmeanstd))
names(tblmeanstd)<-gsub("Gyro","AngularVelocity",names(tblmeanstd))

## make activity value more meaningful by changing numeric value to associated text
tblmeanstd<-join(tblmeanstd,activitylabels,by="ActivityID",match="first")
tblmeanstd<-tblmeanstd[,-1]
 
## take the mean of each value, grouping on subjects and activity
tblmean = ddply(tblmeanstd, c("SubjectID","ActivityName"), numcolwise(mean))
 
## write resulting tidy table to text file
write.table(tblmean,file="tblTidyCalcs.txt",sep=",",row.names=FALSE)
