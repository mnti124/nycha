#Graphs code
#Tot Number of Families
hist(residents$`Total Families`, xlab = "Tot # of Families", ylab = "Frequency", main = "NYCHA's # of Families")

#Tot Female Headed Families
hist(residents$`Total Female Headed Families`, xlab = "# of Female Headed Family", ylab = "Frequency", main = "NYC's Female Household Head")

#Categorical: Programs
barplot(table(residents$PROGRAM), xlab = "Types of Programs", ylab = "Frequency", main = "NYCHA's Programs")

##Tot Male Headed Families 
hist(residents$`Total Male Headed Families`, xlab = "# of Male Headed Family", ylab = "Frequency", main = "NYC's Male Household Head")

#Compute the mean, median, variance, and standard deviation of the column data.
#Tot Female HouseHhold Head
#Mean
mean(residents$`Total Female Headed Families`)
22378.82

#Median
median(residents$`Total Female Headed Families`)
6654

#Variance
var(residents$`Total Female Headed Families`)
1304129049

#Standar Deviation
sd(residents$`Total Female Headed Families`)
36112.73

#Tot Male HouseHhold Head
#mean
mean(residents$`Total Male Headed Families`)
6580.667

#Median
median(residents$`Total Male Headed Families`)
2467

#Variance
var(residents$`Total Male Headed Families`)
110608654

#Standar Deviation
sd(residents$`Total Male Headed Families`)
10517.06

#Regression line + Plot
cor(residents$`Total Female Headed Families`, residents$`Total Male Headed Families`)
0.9973634
plot(residents$`Total Female Headed Families`, residents$`Total Male Headed Families`, xlab= "Female Head Household", ylab="Male Head Household", main = "Female vs Male Head of Household")
abline(lm(residents$`Total Male Headed Families` ~ residents$`Total Female Headed Families`), col= "red")

#Regression Line
data <- lm(`Total Male Headed Families` ~ `Total Female Headed Families`, data=residents)

#scatter plot of the actual observed response value (x axis) vs. residual (y axis)
plot(residents$`Total Female Headed Families`, data$residuals, xlab= "Female Head Household", ylab="Residual", main = "Residual's Female to Male Head Household")

#Residual
hist(resid(data), xlab="Residual", ylab="Frequency", main = "NYCHA Residual")