setwd("C:/Users/Mark/Documents/GitHub/Coursera/R_Programming/Data/")
airquality <- read.csv("hw1_data.csv")
View(airquality)
names(airquality)

dim(airquality) #number of rows and columns

bad <- is.na(airquality$Ozone) #checks for NAs
sum(bad) #counts the number of NAs

airquality$Ozone[47] #47th row of Ozone 

airquality[1:2,] #extract first two rows
airquality[152:153,] #extract last two rows

xbar1 <- mean(airquality$Ozone, na.rm = T) #mean of Ozone without NAs

good <- complete.cases(airquality$Ozone) #extracts rows of the data frame where all values are non-NA
data <- airquality[good, ] #new data frame for complete cases only
xbar2 <- mean(data$Ozone) #mean of Ozone for complete cases only

identical(xbar1, xbar2)

subset1 <- airquality[(airquality[, "Ozone"] > 31) & (airquality[, "Temp"] > 90), ] #extracts only the cases satisfying the specified conditions
xbar3 <- mean(subset1$Solar.R, na.rm = T) #mean of Solar.R

subset2 <- airquality[(airquality[, "Month"] == 6), ] #extracts only the cases for the month of June
xbar4 <- mean(subset2$Temp, na.rm = T) #mean of Temp

subset3 <- airquality[(airquality[, "Month"] == 5), ] #extracts only the cases for the month of May
high <- max(subset3$Ozone, na.rm = T) #mean of Ozone
