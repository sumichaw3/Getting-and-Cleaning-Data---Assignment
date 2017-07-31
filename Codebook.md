## Activity Subject Summary Dataset

### Activity Subject Summary datasets has been created by consolidating the data provided from Human Activity recognition data base built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
 
### It contains one row each for each of the 6 activities performed by each of the 30 subjects containing the mean values of the measurement captured using the inertial sensors and thus a total of 180 rows.

### The dataset contains 82 variables as listed below:
 
### 1	ActivityId: int Ids for six activities from 1 to 6 
### 2	ActivityName: Factor variable having six values WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
### 3	SubjectId: Factor variable having thirty value 1 to 30 for each of the subject

### Rest of the seventy nine variables are all feature variables. The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcceleration-XYZ and tAngularVelocity-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcceleration-XYZ and tGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
 
### Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccelerationJerk-XYZ and tBodyAngularVelocityJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccelerationMag, tGravityAccelerationMag, tBodyAccelerationJerkMag, tBodyAngularVelocityMag, tBodyAngularVelocityJerkMag). 
 
### Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcceleration-XYZ, fBodyAccelerationJerk-XYZ, fBodyAngularVelocity-XYZ, fBodyAccelerationJerkMag, fBodyAngularVelocityMag, fBodyAngularVelocityJerkMag. (Note the 'f' to indicate frequency domain signals). 
 
### These signals were used to estimate variables of the feature vector for each pattern:  
### '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
 
### tBodyAcceleration-XYZ
### tGravityAcceleration-XYZ
### tBodyAccelerationJerk-XYZ
### tBodyAngularVelocity-XYZ
### tBodyAngularVelocityJerk-XYZ
### tBodyAccelerationMag
### tGravityAccelerationMag
### tBodyAccelerationJerkMag
### tBodyAngularVelocityMag
### tBodyAngularVelocityJerkMag
### fBodyAcceleration-XYZ
### fBodyAccelerationJerk-XYZ
### fBodyAngularVelocity-XYZ
### fBodyAccelerationMag
### fBodyAccelerationJerkMag
### fBodyAngularVelocityMag
### fBodyAngularVelocityJerkMag
 
### The set of variables that were estimated from these signals are: 
 
### mean(): Mean value
### std(): Standard deviation
### mad(): Median absolute deviation 
### max(): Largest value in array
### min(): Smallest value in array
### sma(): Signal magnitude area
### energy(): Energy measure. Sum of the squares divided by the number of values. 
### iqr(): Interquartile range 
### entropy(): Signal entropy
### arCoeff(): Autorregresion coefficients with Burg order equal to 4
### correlation(): correlation coefficient between two signals
### maxInds(): index of the frequency component with largest magnitude
### meanFreq(): Weighted average of the frequency components to obtain a mean frequency
### skewness(): skewness of the frequency domain signal 
### kurtosis(): kurtosis of the frequency domain signal 
### bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
### angle(): Angle between to vectors.
 
### Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
 
### gravityMean
### tBodyAccelerationMean
### tBodyAccelerationJerkMean
### tBodyAngularVelocityMean
### tBodyAngularVelocityJerkMean

### These mean (Mean) and standard deviation (SD) values for the inertial signals derived as per the details mentioned above have then been picked and further averaged for all the samples for a particular acitivty and a particular subject to result in just one mean value for each activity and each subject. All the values are real numbers and units for acceleation variables is same as gravitation acceleration i.e. meters per second square and that for angular velocity is radians per second.  
 
### 4	tBodyAcclerationMeanX: real number 
### 5	tBodyAcclerationMeanY: real number
### 6	tBodyAcclerationMeanZ: real number
### 7	tGravityAcclerationMeanX: real number
### 8	tGravityAcclerationMeanY: real number
### 9	tGravityAcclerationMeanZ: real number
### 10	tBodyAcclerationJerkMeanX: real number
### 11	tBodyAcclerationJerkMeanY: real number
### 12	tBodyAcclerationJerkMeanZ: real number
### 13	tBodyAngularVelocityMeanX: real number
### 14	tBodyAngularVelocityMeanY: real number
### 15	tBodyAngularVelocityMeanZ: real number
### 16	tBodyAngularVelocityJerkMeanX: real number
### 17	tBodyAngularVelocityJerkMeanY: real number
### 18	tBodyAngularVelocityJerkMeanZ: real number
### 19	tBodyAcclerationMagMean: real number
### 20	tGravityAcclerationMagMean: real number
### 21	tBodyAcclerationJerkMagMean: real number
### 22	tBodyAngularVelocityMagMean: real number
### 23	tBodyAngularVelocityJerkMagMean: real number
### 24	fBodyAcclerationMeanX: real number
### 25	fBodyAcclerationMeanY: real number
### 26	fBodyAcclerationMeanZ: real number
### 27	fBodyAcclerationMeanFreqX: real number
### 28	fBodyAcclerationMeanFreqY: real number
### 29	fBodyAcclerationMeanFreqZ: real number
### 30	fBodyAcclerationJerkMeanX: real number
### 31	fBodyAcclerationJerkMeanY: real number
### 32	fBodyAcclerationJerkMeanZ: real number
### 33	fBodyAcclerationJerkMeanFreqX: real number
### 34	fBodyAcclerationJerkMeanFreqY: real number
### 35	fBodyAcclerationJerkMeanFreqZ: real number
### 36	fBodyAngularVelocityMeanX: real number
### 37	fBodyAngularVelocityMeanY: real number
### 38	fBodyAngularVelocityMeanZ: real number
### 39	fBodyAngularVelocityMeanFreqX: real number
### 40	fBodyAngularVelocityMeanFreqY: real number
### 41	fBodyAngularVelocityMeanFreqZ: real number
### 42	fBodyAcclerationMagMean: real number
### 43	fBodyAcclerationMagMeanFreq: real number
### 44	fBodyAcclerationJerkMagMean: real number
### 45	fBodyAcclerationJerkMagMeanFreq: real number
### 46	fBodyAngularVelocityMagMean: real number
### 47	fBodyAngularVelocityMagMeanFreq: real number
### 48	fBodyAngularVelocityJerkMagMean: real number
### 49	fBodyAngularVelocityJerkMagMeanFreq: real number
### 50	tBodyAcclerationSDX: real number
### 51	tBodyAcclerationSDY: real number
### 52	tBodyAcclerationSDZ: real number
### 53	tGravityAcclerationSDX: real number
### 54	tGravityAcclerationSDY: real number
### 55	tGravityAcclerationSDZ: real number
### 56	tBodyAcclerationJerkSDX: real number
### 57	tBodyAcclerationJerkSDY: real number
### 58	tBodyAcclerationJerkSDZ: real number
### 59	tBodyAngularVelocitySDX: real number
### 60	tBodyAngularVelocitySDY: real number
### 61	tBodyAngularVelocitySDZ: real number
### 62	tBodyAngularVelocityJerkSDX: real number
### 63	tBodyAngularVelocityJerkSDY: real number
### 64	tBodyAngularVelocityJerkSDZ: real number
### 65	tBodyAcclerationMagSD: real number
### 66	tGravityAcclerationMagSD: real number
### 67	tBodyAcclerationJerkMagSD: real number
### 68	tBodyAngularVelocityMagSD: real number
### 69	tBodyAngularVelocityJerkMagSD: real number
### 70	fBodyAcclerationSDX: real number
### 71	fBodyAcclerationSDY: real number
### 72	fBodyAcclerationSDZ: real number
### 73	fBodyAcclerationJerkSDX: real number
### 74	fBodyAcclerationJerkSDY: real number
### 75	fBodyAcclerationJerkSDZ: real number
### 76	fBodyAngularVelocitySDX: real number
### 77	fBodyAngularVelocitySDY: real number
### 78	fBodyAngularVelocitySDZ: real number
### 79	fBodyAcclerationMagSD: real number
### 80	fBodyAcclerationJerkMagSD: real number
### 81	fBodyAngularVelocityMagSD: real number
### 82	fBodyAngularVelocityJerkMagSD: real number
