README
# Assignment_GandCData
Assignment  - Getting and Cleaning Data

There is only one script that was created for this assignment which is called "run_analysis.R"

This script start but loadling the ply libraries in Lines 5 and 6
Then, the script sets the workind directory.
Next, the scrip loads the activity labels and feature labels in the following data frames:
1) actlab
2) feat

In lines 15 to 21, the script loads and tidy the test data.
The data frames used for this are:
testx
subjtest
testy
test_data (which is the tidy table)

Then, in lines 23 to 30, the script loads and tidy the training data.
The following are the dataframes used:
trainx
subjttrain
trainy
names
train_data(which is the tidy table)

Line 33 binds both test and training data.

Lastly, lines 35 to 52 mutates the table with an Activity Description and summarizes the mean for the first 6 columns.
These data is grouped by the Activity description and the Subject.

