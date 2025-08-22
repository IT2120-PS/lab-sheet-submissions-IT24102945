setwd("C:\\Users\\Pasindu Lakshan\\Desktop\\IT24100316_Lab3")
#Q1
#Importing Data set
data<-read.csv("Exercise.csv",header=TRUE)
#View the file in a separate window
fix(data)
#Renaming column headings
names(data)<-c("Age","Gender","Accommodation")
#Converting Gender & Accommodation into factors/categorical variables
data$Gender <- factor(data$Gender, c(1,2), c("Male","Female"))
data$Accommodation <- factor(data$Accommodation, c(1,2,3), c("Home","Boarded","Lodging"))
#View the file in a separate window after converting
fix(data)
#Attach the file into R. So, you can call the variables by their names
attach(data)

#Q2
# Get summary statistics for the 'X1' variable
summary(Age)

# Get histogram for the 'X1' variable
hist(Age, main = "Histogram of Age")

#Q3
# Create a frequency table for the Gender variable
gender.freq <- table(Gender)
# Print the frequency table
gender.freq

# Create a bar chart for the Gender variable
barplot(gender.freq, main = "Bar Chart of Gender",xlab = "Gender",ylab = "Frequency")
abline(h=0)

#Q4
# Create a side-by-side boxplot of Age by Accommodation type
boxplot(Age ~ Accommodation,main = "Age Distribution by Accommodation Type",
        xlab = "Accommodation Type",ylab = "Age")





