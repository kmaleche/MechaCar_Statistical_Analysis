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



# Read in suspension coil data
coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)

#Write an RScript that creates a total_summary dataframe using the summarize() function 
#to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column
total_summary <- coil_df %>%
  summarise(mean = mean(PSI), median = median(PSI), variance = var(PSI), SD = sd(PSI, na.rm=FALSE), n = n())


# create a lot_summary dataframe using the group_by() and the summarize() functions 
#to group each manufacturing lot by the mean, median, variance, and standard deviation 
#of the suspension coil’s PSI column.
lot_summary <- coil_df %>%
  group_by(Manufacturing_Lot) %>%
  summarise(mean = mean(PSI), median = median(PSI), variance = var(PSI), SD = sd(PSI, na.rm=FALSE), n = n())




