### README

## Script run_analysis.R reads all the data provided from Human Activity recognitino data base built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

## As a first step common data was read in and formatted to enable reading the data for test and train subjects. First of all activity labels data was read in to create table of activity with ActivityId and ActivityName variables. Subsequently Features data was read in containing the names of 561 feature variables.

## Post this ten character vectors were created for storing appropriate column names to be used while reading the feature data, triaxial total acceleration data, triaxial body acceleration data and triaxial angular velocity data. One character vector containing 561 column names read from features data, 3 character vectors each for triaxial total acceleration, triaxial body acceleration and triaxial angular velocity were created containing 128 column names each created by suffixing numbers 1 to 128 after the fixed text for each of triaxial parameters.

## Then we moved on to read the test data and consolidate in a single datframe TestSubjectData. To achieve this we first read 2947 subject ids from subject_test.txt file into a data frame contining SubjectId column. Then X_test.txt was read to create 2947 records having 561 feature vairables / mesurements for each of the subject in another data frame. Post this y_test.txt file was read which again had 2947 rows with each row having an AcitivityId. Then nine file three each having triaxial total acceleration, triaxial body acceleration and triaxial angular velocity 128 values for each of the 2947 subjects was read into nine data frames respectively. All the resulting data frames were then column binded in the end to result in consolidated single data frame TestSubjectData. 

## Then we moved on to read the train data and consolidate in a single datframe TrainSubjectData. To achieve this we first read 7352 subject ids from subject_train.txt file into a data frame contining SubjectId column. Then X_train.txt was read to create 7352 records having 561 feature vairables / mesurements for each of the subject in another data frame. Post this y_train.txt file was read which again had 7352 rows with each row having an AcitivityId. Then nine file three each having triaxial total acceleration, triaxial body acceleration and triaxial angular velocity 128 values for each of the 7352 subjects was read into nine data frames respectively. All the resulting data frames were then column binded in the end to result in consolidated single data frame TrainSubjectData.

## Finally TestSubjectData and TrainSubjectData were row binded to get one consolidated data frame SubjectActivityData having 10299 rows and 1715 variables.

## Then to keep only mean and standard deviation measurements a grep was performed on colnames for mean and std and indices of the column names which contain mean / std in their column names were derived and via subsetting of data frame the rest of the columns were dropped and a new resulting data frame SubjectMeanSDActivityData was created which contained 10299 observations and 81 variables. 

## We then merged if with activity data and added Activity name informatino via a lookup to get SubjectMeanSDActivityNameData data frame having 10299 observations and 82 variables.

## Then meaningful coumn names were created by gsub function to replace mean by Mean, std by SD, removing . from column names, replacing Acc by Acceleration, BodyBody by Body, Gyro by Angular velocity.

## Then the data set was melted with ActivityId, ActivityName and SubjectId as id variables and the rest of 79 variables as measures.

## Finally dcast was performed to get the required data frame ActSubjSmry containing mean values of all the 79 variables for all the identified Activities and all the subjects which was then exported to a text file using write.table().
