#### 7. MULTIPLE REGRESSION ####

# This section provides you information about how to do multiple regression
# You need to use Eagle Econometrics data file "EE Data.csv" which is provided to you.

# Read the Eagle Econometrics data into the variable "eedata"
eedata <-read.csv("EE Data.csv", header=T)


# Visualize data
eedata


# Split the screen to display multiple scatter plots using function "par".
# We will display two figures side by side so we create 1 x 2 grid using "mfrow" in the par function
par(mfrow = c(1, 2))


# Create the scatter plot of food consumption and income to see the relationship of these two variables
plot(eedata$Income,eedata$FoodCon, main="Scatter Plot", xlab="Income", ylab="Food Consumption")


# Create the scatter plot of food consumption and household size to see the relationship of these two variables
plot(eedata$Hsize,eedata$FoodCon, main="Scatter Plot", xlab="Household Size", ylab="Food Consumption")


# Run the regression with Food Consumtpion as dependent and Income and Household Size as independent variables using data from "emcdata" and function "lm"
# Note that more than one variable in a regression is added using a "+" sign
# Store the regression information in the variable "mreg"
mreg<-lm(FoodCon ~ Income + Hsize,data=eedata)


# Display the coefficients of the regression
mreg

# Display the ANOVA table and step by step sum of squares
anova(mreg)

#Display the ANOVA without sum of squares but with coefficients, standard error and R squared values
summary(mreg)

