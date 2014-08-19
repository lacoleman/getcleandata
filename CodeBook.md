DATA

The data were obtained from: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. 
Reye-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The experiments were carried out in a group of 30 volunteers aged 19-48 years. Each person performed six activities (walking, walking upstairs, walking downstairs, sitting, standing and laying) wearing a Samsung Galaxy S II smartphone on their waist. The phone captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz using its embedded accelerometer and gyroscope. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The accelerometer signal, which had both gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravitational acceleration. The gravitational force was assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. For the body 
acceleration and gyroscopic signals (which were body only), the linear acceleration and angular velocity were derived as a factor of time to obtain Jerk signals. The magnitude of the 3D acceleration, gyro and jerk signals was calculated using the Euclidean norm. Fast Fourier Transforms (FFT) were applied to some of the signals, converting them to functions of frequency instead of time.

==============================================================================================================
DATA FILES

The data used are stored in the following files and folders (within the unzipped file):

activity_labels.txt         matches the number codes for the activities with their names
features.txt                lists the names of the column variables
test/subject_test.txt       provides the corresponding subject ID for each row of the test data set
test/X_text.txt             contains the test data set
test/y_test.txt             provides the corresponding activity number for each row of the test data set
train/subject_train.txt     provides the corresponding subject ID for each row of the training data set
train/X_train.txt           contains the training data set
train/y_train.txt           provides the corresponding activity number for each row of the training data set

==============================================================================================================
VARIABLES

t                   data as a function of time
f                   data as a function of frequency (Fourier-transformed)
Acc                 (linear) acceleration
Gyro                gyroscopic (angular) velocity
Mag                 magnitude
-mean()             mean of variable
-std()              standard deviation of variable
-XYZ                in the X, Y or Z axial plane

tBodyAcc-XYZ        body linear acceleration in the X/Y/Z plane over time
tGravityAcc-XYZ     gravitational linear acceleration in the X/Y/Z plane over time
tBodyAccJerk-XYZ    body jerk acceleration in the X/Y/Z plane over time
tBodyGyro-XYZ       body gyroscopic angular velocity in the X/Y/Z plane over time
tBodyGyroJerk-XYZ   body gyroscopic jerk velocity in the X/Y/Z plane over time
tBodyAccMag         magnitude of body linear acceleration over time
tGravityAccMag      magnitude of gravitational linear acceleration over time
tBodyAccJerkMag     magnitude of body jerk acceleration over time
tBodyGyroMag        magnitude of body gyroscopic angular velocity over time
tBodyGyroJerkMag    magnitude of body gyroscopic jerk velocity over time
fBodyAcc-XYZ        body linear acceleration in the X/Y/Z plane over frequency
fBodyAccJerk-XYZ    body jerk acceleration in the X/Y/Z plane over frequency
fBodyGyro-XYZ       body gyroscopic angular velocity in the X/Y/Z plane over frequency
fBodyAccMag         magnitude of body linear acceleration over frequency
fBodyAccJerkMag     magnitude of body jerk acceleration over frequency
fBodyGyroMag        magnitude of body gyroscopic angular velocity over frequency
fBodyGyroJerkMag    magnitude of body gyroscopic jerk velocity over frequency

==============================================================================================================
TRANSFORMATIONS

run_analysis.R was run on the data, during which:
Columns were subsetted to just the means and standard deviations (variables ending in either "mean()" or 
"std()").
Number codes for the activities were converted to names eg. 1 -> Walking.
Averages were calculated for each variable for each subject performing each
activity ie. Subject 1, Walking, average mean body linear acceleration in the X plane over time
             Subject 1, Walking, average mean body linear acceleration in the Y plane over time
and so on.