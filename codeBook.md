This file summarizes the variable names in run_analysis.R and the data fields in tidyDataSet.txt.

Variable names
==============
* XTrain contains measurement values from training dataSet.
YTrain contains activity values(1-6) from training dataSet.
subjectTrain contains id of the subject(1- 24) from training dataSet.

* XTest,YTest,subjectTest contains measurement values from test data.

* mergedData table has train and test data combined.

* activities contains activity lables

* mergedDataMean contains mean of all the measurement values in mergedData 

Lastly we write the data in "tidyDataSet.txt".



Description of data fields in tidyDataSet.txt
================================================

Columns
========
First column -> subject - ID of the test subject
Second column -> activity - The type of activity performed by the subject which gave the corresponding measurements.
Rest of the columns -> Measurements


Description of column values
============================
**First column -> Id of the test subjects

**Second column -> activity takes the following 6 values:-

1  WALKING : subject was walking during the test
2  WALKING_UPSTAIRS : subject was walking up a staircase during the test
3  WALKING_DOWNSTAIRS : subject was walking down a staircase during the test
4  SITTING : subject was sitting during the test
5  STANDING : subject was standing during the test
6  LAYING : subject was laying down during the test


**Rest of the 79 columns(Measurements) have values for these titles:-

1	tBodyAccMeanX
2	tBodyAccMeanY
3	tBodyAccMeanZ
4	tBodyAccStdX
5	tBodyAccStdY
6	tBodyAccStdZ
7	tGravityAccMeanX
8	tGravityAccMeanY
9	tGravityAccMeanZ
10	tGravityAccStdX
11	tGravityAccStdY
12	tGravityAccStdZ
13	tBodyAccJerkMeanX
14	tBodyAccJerkMeanY
15	tBodyAccJerkMeanZ
16	tBodyAccJerkStdX
17	tBodyAccJerkStdY
18	tBodyAccJerkStdZ
19	tBodyGyroMeanX
20	tBodyGyroMeanY
21	tBodyGyroMeanZ
22	tBodyGyroStdX
23	tBodyGyroStdY
24	tBodyGyroStdZ
25	tBodyGyroJerkMeanX
26	tBodyGyroJerkMeanY
27	tBodyGyroJerkMeanZ
28	tBodyGyroJerkStdX
29	tBodyGyroJerkStdY
30	tBodyGyroJerkStdZ
31	tBodyAccMagMean
32	tBodyAccMagStd
33	tGravityAccMagMean
34	tGravityAccMagStd
35	tBodyAccJerkMagMean
36	tBodyAccJerkMagStd
37	tBodyGyroMagMean
38	tBodyGyroMagStd
39	tBodyGyroJerkMagMean
40	tBodyGyroJerkMagStd
41	fBodyAccMeanX
42	fBodyAccMeanY
43	fBodyAccMeanZ
44	fBodyAccStdX
45	fBodyAccStdY
46	fBodyAccStdZ
47	fBodyAccMeanFreqX
48	fBodyAccMeanFreqY
49	fBodyAccMeanFreqZ
50	fBodyAccJerkMeanX
51	fBodyAccJerkMeanY
52	fBodyAccJerkMeanZ
53	fBodyAccJerkStdX
54	fBodyAccJerkStdY
55	fBodyAccJerkStdZ
56	fBodyAccJerkMeanFreqX
57	fBodyAccJerkMeanFreqY
58	fBodyAccJerkMeanFreqZ
59	fBodyGyroMeanX
60	fBodyGyroMeanY
61	fBodyGyroMeanZ
62	fBodyGyroStdX
63	fBodyGyroStdY
64	fBodyGyroStdZ
65	fBodyGyroMeanFreqX
66	fBodyGyroMeanFreqY
67	fBodyGyroMeanFreqZ
68	fBodyAccMagMean
69	fBodyAccMagStd
70	fBodyAccMagMeanFreq
71	fBodyBodyAccJerkMagMean
72	fBodyBodyAccJerkMagStd
73	fBodyBodyAccJerkMagMeanFreq
74	fBodyBodyGyroMagMean
75	fBodyBodyGyroMagStd
76	fBodyBodyGyroMagMeanFreq
77	fBodyBodyGyroJerkMagMean
78	fBodyBodyGyroJerkMagStd
79	fBodyBodyGyroJerkMagMeanFreq

	
