library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

#Perform linear regression using the lm() function. 
#In the lm() function, pass in all six variables (i.e., columns), 
#and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,df) #create linear model


#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=df))

#Save your MechaCarChallenge.RScript file to your GitHub repository.

