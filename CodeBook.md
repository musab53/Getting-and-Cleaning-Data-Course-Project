Cource Data: 

I hava strated the Project by downloading the data form the below link by hand:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Then svae it into my working directory, unzipped the file and start loading the data into RStudio. 

## Reading the files:
1. Reading the files and assigne col.name which will save time later  during the merge. 
2. Merging the data into one dataset. 
3. Extracting only the measurements based on the mean and STD for each one.


## At the final stage activity column has 6 types listed below 

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING
 
 
## Examples of the measurements :

"activity_id"
"subject_id"
"tBodyAcc.mean...X" 
"tBodyAcc.mean...Y"
"tBodyAcc.mean...Z"
"tGravityAcc.mean...X"
"tGravityAcc.mean...Y .... please refer to the tidydata.txt 

