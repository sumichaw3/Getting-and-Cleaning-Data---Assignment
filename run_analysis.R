# Reading common Activity and features data
# Creating character vector containing columns names for Feature, triaxial total acceleration, 
# triaxial estimated body acceleration and triaxial angular velocity

tblActivity<-read.table("./activity_labels.txt", sep="", col.names=c("ActivityId", "ActivityName"))
tblFeatures<-read.table("./features.txt", sep="", col.names=c("FeaturesId", "FeaturesName"))
cvFeatures<-as.character(tblFeatures$FeaturesName)
TotalAcceleration_x<-c()
for(i in 1 : 128){TotalAcceleration_x[i]<-paste("TotalAcceleration_x",as.character(i),sep="")}
TotalAcceleration_y<-c()
for(i in 1 : 128){TotalAcceleration_y[i]<-paste("TotalAcceleration_y",as.character(i),sep="")}
TotalAcceleration_z<-c()
for(i in 1 : 128){TotalAcceleration_z[i]<-paste("TotalAcceleration_z",as.character(i),sep="")}
BodyAcceleration_x<-c()
for(i in 1 : 128){BodyAcceleration_x[i]<-paste("BodyAcceleration_x",as.character(i),sep="")}
BodyAcceleration_y<-c()
for(i in 1 : 128){BodyAcceleration_y[i]<-paste("BodyAcceleration_y",as.character(i),sep="")}
BodyAcceleration_z<-c()
for(i in 1 : 128){BodyAcceleration_z[i]<-paste("BodyAcceleration_z",as.character(i),sep="")}
AngularVelocity_x<-c()
for(i in 1 : 128){AngularVelocity_x[i]<-paste("AngularVelocity_x",as.character(i),sep="")}
AngularVelocity_y<-c()
for(i in 1 : 128){AngularVelocity_y[i]<-paste("AngularVelocity_y",as.character(i),sep="")}
AngularVelocity_z<-c()
for(i in 1 : 128){AngularVelocity_z[i]<-paste("AngularVelocity_z",as.character(i),sep="")}

# Reading test data and creating single test Data set

TestSubID<-read.table("./subject_test.txt", sep="", col.names=c("SubjectId"),colClasses=c("factor"))
TestActivity<-read.table("./y_test.txt", sep="", col.names=c("ActivityId"))
TestFeature<-read.table("./X_test.txt", sep="", col.names=cvFeatures)
TestTotAcc_x<-read.table("./total_acc_x_test.txt", sep="", col.names=TotalAcceleration_x)
TestTotAcc_y<-read.table("./total_acc_y_test.txt", sep="", col.names=TotalAcceleration_y)
TestTotAcc_z<-read.table("./total_acc_z_test.txt", sep="", col.names=TotalAcceleration_z)
TestBodyAcc_x<-read.table("./body_acc_x_test.txt", sep="", col.names=BodyAcceleration_x)
TestBodyAcc_y<-read.table("./body_acc_y_test.txt", sep="", col.names=BodyAcceleration_y)
TestBodyAcc_z<-read.table("./body_acc_z_test.txt", sep="", col.names=BodyAcceleration_z)
TestAnglrVel_x<-read.table("./body_gyro_x_test.txt", sep="", col.names=AngularVelocity_x)
TestAnglrVel_y<-read.table("./body_gyro_y_test.txt", sep="", col.names=AngularVelocity_y)
TestAnglrVel_z<-read.table("./body_gyro_z_test.txt", sep="", col.names=AngularVelocity_z)
TestSubjectData<-cbind(TestSubID, TestActivity, TestTotAcc_x, TestTotAcc_y, TestTotAcc_z, TestBodyAcc_x, TestBodyAcc_y, TestBodyAcc_z, TestAnglrVel_x, TestAnglrVel_y, TestAnglrVel_z, TestFeature)  

# Reading train data and creating single train Data set

TrainSubID<-read.table("./subject_train.txt", sep="", col.names=c("SubjectId"),colClasses=c("factor"))
TrainActivity<-read.table("./y_train.txt", sep=" ", col.names=c("ActivityId"))
TrainFeature<-read.table("./X_train.txt", sep="", col.names=cvFeatures)
TrainTotAcc_x<-read.table("./total_acc_x_train.txt", sep="", col.names=TotalAcceleration_x)
TrainTotAcc_y<-read.table("./total_acc_y_train.txt", sep="", col.names=TotalAcceleration_y)
TrainTotAcc_z<-read.table("./total_acc_z_train.txt", sep="", col.names=TotalAcceleration_z)
TrainBodyAcc_x<-read.table("./body_acc_x_train.txt", sep="", col.names=BodyAcceleration_x)
TrainBodyAcc_y<-read.table("./body_acc_y_train.txt", sep="", col.names=BodyAcceleration_y)
TrainBodyAcc_z<-read.table("./body_acc_z_train.txt", sep="", col.names=BodyAcceleration_z)
TrainAnglrVel_x<-read.table("./body_gyro_x_train.txt", sep="", col.names=AngularVelocity_x)
TrainAnglrVel_y<-read.table("./body_gyro_y_train.txt", sep="", col.names=AngularVelocity_y)
TrainAnglrVel_z<-read.table("./body_gyro_z_train.txt", sep="", col.names=AngularVelocity_z)
TrainSubjectData<-cbind(TrainSubID, TrainActivity, TrainTotAcc_x, TrainTotAcc_y, TrainTotAcc_z, TrainBodyAcc_x, TrainBodyAcc_y, TrainBodyAcc_z, TrainAnglrVel_x, TrainAnglrVel_y, TrainAnglrVel_z, TrainFeature) 

# Merging test and train data into one dataset

SubjectActivityData<-rbind(TestSubjectData, TrainSubjectData)

# Extraction of only the measurements on the mean and standard deviation for each measurement

MeanColumnNumbers<-grep("mean", colnames(SubjectActivityData))
StdDeviationColumnNumbers<-grep("std", colnames(SubjectActivityData))
SubjectMeanSDActivityData<-SubjectActivityData[,c(1, 2, MeanColumnNumbers, StdDeviationColumnNumbers)]

# Using Descriptive Activity Names to name the activities in the dataset

SubjectMeanSDActivityNameData<-merge(SubjectMeanSDActivityData, tblActivity, by="ActivityId")

# Renaming the variables with descriptive names

NewColumnNames<-gsub("mean","Mean",colnames(SubjectMeanSDActivityNameData))
NewColumnNames<-gsub("std","SD", NewColumnNames)
NewColumnNames<-gsub("\\.","", NewColumnNames)
NewColumnNames<-gsub("Acc","Accleration", NewColumnNames)
NewColumnNames<-gsub("BodyBody","Body", NewColumnNames)
NewColumnNames<-gsub("Gyro","AngularVelocity", NewColumnNames)
colnames(SubjectMeanSDActivityNameData)<-NewColumnNames

# Creation of a second tidy data set with average of each variable for each activity and each subject

library(reshape2)
ActSubjDataMelt<-melt(SubjectMeanSDActivityNameData, id=c("ActivityId","ActivityName", "SubjectId"), measures=c(names(SubjectMeanSDActivityNameData[3:81])))
ActSubjSmry<-dcast(ActSubjDataMelt, ActivityId+ActivityName+SubjectId~variable, mean)

# Writing the final data frame to a file

write.table(ActSubjSmry, "./ActivitySubjectSummary.txt", row.names=FALSE)












