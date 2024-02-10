#LOAD REQUIRED LIBRARIES:
#dplyr for data manipulation and tidyr for reshaping data.
install.packages("dplyr")
install.packages("tidyr")
library(dplyr)
library(tidyr)

#IMPORT DATASETS
foodSupply <- read.csv("Food_Supply_Quantity_kg_Data.csv")


#EXPLORATORY DATA ANALYSIS (EDA):
#1.View first 5 rows
head(foodSupply)

#2.Descriptive statistics for each dataset
summary(foodSupply)


#3.Datatype of columns
str(foodSupply)


#HANDLING MISSING VALUES
#1.To find total number of missing values in dataset
sum(is.na(foodSupply))


#2.To find number of missing values in each column in dataset
colSums(is.na(foodSupply))

#3. Removing rows with missing values
foodSupply2 <- foodSupply[complete.cases(foodSupply), ]


#4. Checking for missing values after removal
colSums(is.na(foodSupply2))


#5. Remove duplicate data (can skip this since no duplicate data in datasets)
foodSupply2 <- distinct(foodSupply2)


#6.Descriptive statistics for each clean dataset
summary(foodSupply2)


#DATA VISUALIZATION
install.packages("ggplot2")
library(ggplot2)

# HISTOGRAMS
ggplot(data = foodSupply2, aes(x = Deaths)) + geom_histogram(color = "blue")
ggplot(data = foodSupply2, aes(x = Confirmed)) + geom_histogram(color = "blue")
ggplot(data = foodSupply2, aes(x = Recovered)) + geom_histogram(color = "blue")
ggplot(data = foodSupply2, aes(x = Alcoholic.Beverages)) + geom_histogram(color = "blue")
ggplot(data = foodSupply2, aes(x = Animal.Products)) + geom_histogram(color = "blue")
ggplot(data = foodSupply2, aes(x = Cereals...Excluding.Beer)) + geom_histogram(color = "blue")
ggplot(data = foodSupply2, aes(x = Fruits...Excluding.Wine)) + geom_histogram(color = "blue")
ggplot(data = foodSupply2, aes(x = Meat)) + geom_histogram(color = "blue") 
ggplot(data = foodSupply2, aes(x = Starchy.Roots)) + geom_histogram(color = "blue")
ggplot(data = foodSupply2, aes(x = Vegetal.Products)) + geom_histogram(color = "blue")
ggplot(data = foodSupply2, aes(x = Vegetables)) + geom_histogram(color = "blue")

       
       # SCATTER PLOTS
#1.Death rate v/s variables
ggplot(data = foodSupply2, aes(x = Deaths , y = Alcoholic.Beverages)) + geom_point(color = "blue")
ggplot(data = foodSupply2, aes(x = Deaths , y = Animal.fats)) + geom_point()
ggplot(data = foodSupply2, aes(x = Deaths , y = Animal.Products)) + geom_point()
ggplot(data = foodSupply2, aes(x = Deaths , y = Eggs)) + geom_point()
ggplot(data = foodSupply2, aes(x = Deaths , y = Pulses)) + geom_point()
ggplot(data = foodSupply2, aes(x = Deaths , y = Meat)) + geom_point()
ggplot(data = foodSupply2, aes(x = Deaths , y = Vegetables)) + geom_point(color = "red")
ggplot(data = foodSupply2, aes(x = Deaths , y = Obesity)) + geom_point()
ggplot(data = foodSupply2, aes(x = Deaths , y = Population)) + geom_point()
ggplot(data = foodSupply2, aes(x = Deaths , y = Undernourished)) + geom_point()

#2.Confirmed cases v/s variables
ggplot(data = foodSupply2, aes(x = Confirmed , y = Alcoholic.Beverages)) + geom_point()
ggplot(data = foodSupply2, aes(x = Confirmed , y = Animal.fats)) + geom_point()
ggplot(data = foodSupply2, aes(x = Confirmed , y = Animal.Products)) + geom_point()
ggplot(data = foodSupply2, aes(x = Confirmed , y = Eggs)) + geom_point()
ggplot(data = foodSupply2, aes(x = Confirmed , y = Pulses)) + geom_point()
ggplot(data = foodSupply2, aes(x = Confirmed , y = Starchy.Roots)) + geom_point()
ggplot(data = foodSupply2, aes(x = Confirmed , y = Obesity)) + geom_point()
ggplot(data = foodSupply2, aes(x = Confirmed , y = Population)) + geom_point()
ggplot(data = foodSupply2, aes(x = Confirmed , y = Undernourished)) + geom_point()

#3.Recovery rate v/s variables
ggplot(data = foodSupply2, aes(x = Recovered , y = Alcoholic.Beverages)) + geom_point()
ggplot(data = foodSupply2, aes(x = Recovered , y = Animal.fats)) + geom_point()
ggplot(data = foodSupply2, aes(x = Recovered , y = Animal.Products)) + geom_point()
ggplot(data = foodSupply2, aes(x = Recovered , y = Eggs)) + geom_point()
ggplot(data = foodSupply2, aes(x = Recovered , y = Pulses)) + geom_point()
ggplot(data = foodSupply2, aes(x = Recovered , y = Starchy.Roots)) + geom_point()
ggplot(data = foodSupply2, aes(x = Recovered , y = Obesity)) + geom_point(color = "blue")
ggplot(data = foodSupply2, aes(x = Recovered , y = Population)) + geom_point()
ggplot(data = foodSupply2, aes(x = Recovered , y = Undernourished)) + geom_point()

# LINE CHARTS
#1.Death rate v/s variables
ggplot(data = foodSupply2, aes(x = Alcoholic.Beverages , y = Deaths)) + geom_line(color = "blue")
ggplot(data = foodSupply2, aes(x = Cereals...Excluding.Beer , y = Deaths)) + geom_line(color = "blue")
ggplot(data = foodSupply2, aes(x = Sugar...Sweeteners , y = Deaths)) + geom_line(color = "blue")
ggplot(data = foodSupply2, aes(x = Deaths , y = Eggs)) + geom_line(color = "blue")
ggplot(data = foodSupply2, aes(x = Deaths , y = Pulses)) + geom_line(color = "blue")
ggplot(data = foodSupply2, aes(x = Deaths , y = Starchy.Roots)) + geom_line(color = "blue")
ggplot(data = foodSupply2, aes(x = Deaths , y = Obesity)) + geom_line(color = "blue")
ggplot(data = foodSupply2, aes(x = Deaths , y = Population)) + geom_line(color = "blue")
ggplot(data = foodSupply2, aes(x = Deaths , y = Undernourished)) + geom_line(color = "blue")
ggplot(foodSupply2, aes(x = Recovered, y = Alcoholic.Beverages)) + geom_line(color = "blue")

#2.Confirmed cases v/s variables
ggplot(data = foodSupply2, aes(x = Confirmed , y = Alcoholic.Beverages)) + geom_line(color = "green")
ggplot(data = foodSupply2, aes(x = Confirmed , y = Animal.fats)) + geom_line(color = "green")
ggplot(data = foodSupply2, aes(x = Confirmed , y = Animal.Products)) + geom_line(color = "green")
ggplot(data = foodSupply2, aes(x = Confirmed , y = Eggs)) + geom_line(color = "green")
ggplot(data = foodSupply2, aes(x = Confirmed , y = Pulses)) + + geom_line(color = "green")
ggplot(data = foodSupply2, aes(x = Confirmed , y = Starchy.Roots)) + geom_line(color = "green")
ggplot(data = foodSupply2, aes(x = Confirmed , y = Obesity)) + geom_line(color = "green")
ggplot(data = foodSupply2, aes(x = Confirmed , y = Population)) + geom_line(color = "green")
ggplot(data = foodSupply2, aes(x = Confirmed , y = Undernourished)) + geom_line(color = "green")

#3.Recovery rate v/s variables
ggplot(data = foodSupply2, aes(x = Recovered , y = Alcoholic.Beverages)) + geom_line(color = "orange")
ggplot(data = foodSupply2, aes(x = Recovered , y = Animal.fats)) + geom_line(color = "orange")
ggplot(data = foodSupply2, aes(x = Recovered , y = Animal.Products)) + geom_line(color = "orange")
ggplot(data = foodSupply2, aes(x = Recovered , y = Eggs)) + geom_line(color = "orange")
ggplot(data = foodSupply2, aes(x = Recovered , y = Pulses)) + geom_line(color = "orange")
ggplot(data = foodSupply2, aes(x = Recovered , y = Starchy.Roots)) + geom_line(color = "orange")
ggplot(data = foodSupply2, aes(x = Recovered , y = Obesity)) + geom_line(color = "orange")
ggplot(data = foodSupply2, aes(x = Recovered , y = Population)) + geom_line(color = "orange")
ggplot(data = foodSupply2, aes(x = Recovered , y = Undernourished)) + geom_line(color = "orange")


#Order data by Recovery percentage(descending)
foodSupply3 <- foodSupply2[order(foodSupply2$Recovered, decreasing=TRUE),]
write.csv(foodSupply3, "foodSupply3.csv", row.names=FALSE)

#Sample of first 40 rows - Z test
foodSupply4 <- head(foodSupply3,40)

#Sample of first 20 rows - T test
foodSupply5 <- head(foodSupply3,20)

#Writing 40 rows in a file
write.csv(foodSupply4, "foodSupply4.csv", row.names=FALSE)

#Writing 20 rows in a file
write.csv(foodSupply5, "foodSupply5.csv", row.names=FALSE)


#Descriptive statistics for clean dataset(40 rows)
summary(foodSupply4)

#Correlation of Animal Products consumption and deaths -
mean_animal_products_sample = mean(foodSupply4$Animal.Products)
mean_animal_products_population = mean(foodSupply2$Animal.Products)
sd_animal_products_population = sd(foodSupply2$Animal.Products)


#Sample
x1 <- foodSupply4$Animal.Products
y1 <- foodSupply4$Deaths
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x1, y1, main = "Animal Products vs Deaths - Sample",
     xlab = "Animal Products Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
# Add regression line
plot(x1, y1, main = "Animal Products vs Deaths - Sample",
     xlab = "Animal Products Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
abline(lm(y1 ~ x1, data = foodSupply4 ), col = "blue")


#Population
x1 <- foodSupply2$Animal.Products
y1 <- foodSupply2$Deaths
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x1, y1, main = "Animal Products vs Deaths - Population",
     xlab = "Animal Products Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
# Add regression line
plot(x1, y1, main = "Animal Products vs Deaths - Population",
     xlab = "Animal Products Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
abline(lm(y1 ~ x1, data = foodSupply2 ), col = "blue")


#Correlation of Vegetables consumption and deaths -
mean_vegetables_sample = mean(foodSupply4$Vegetables)
mean_vegetables_population = mean(foodSupply2$Vegetables)
sd_vegetables_population = sd(foodSupply2$Vegetables)

#Sample
x1 <- foodSupply4$Vegetables
y1 <- foodSupply4$Deaths
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x1, y1, main = "Vegetables vs Deaths - Sample",
     xlab = "Vegetables Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
# Add regression line
plot(x1, y1, main = "Vegetables vs Deaths - Sample",
     xlab = "Vegetables Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
abline(lm(y1 ~ x1, data = foodSupply4 ), col = "blue")

#Population
x1 <- foodSupply2$Vegetables
y1 <- foodSupply2$Deaths
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x1, y1, main = "Vegetables vs Deaths - Population",
     xlab = "Vegetables Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
# Add regression line
plot(x1, y1, main = "Vegetables vs Deaths - Population",
     xlab = "Vegetables Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
abline(lm(y1 ~ x1, data = foodSupply2 ), col = "blue")


#Correlation of Cereals consumption and deaths -
mean_cereals_sample = mean(foodSupply4$Cereals...Excluding.Beer)
mean_cereals_population = mean(foodSupply2$Cereals...Excluding.Beer)
sd_cereals_population = sd(foodSupply2$Cereals...Excluding.Beer)


#Sample
x1 <- foodSupply4$Cereals...Excluding.Beer
y1 <- foodSupply4$Deaths
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x1, y1, main = "Cereals vs Deaths - Sample",
     xlab = "Cereals Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
# Add regression line
plot(x1, y1, main = "Cereals vs Deaths - Sample",
     xlab = "Cereals Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
abline(lm(y1 ~ x1, data = foodSupply4 ), col = "blue")

#Population
x1 <- foodSupply2$Cereals...Excluding.Beer
y1 <- foodSupply2$Deaths
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x1, y1, main = "Cereals vs Deaths - Population",
     xlab = "Cereals Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
# Add regression line
plot(x1, y1, main = "Cereals vs Deaths - Population",
     xlab = "Cereals Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
abline(lm(y1 ~ x1, data = foodSupply2 ), col = "blue")


#Correlation of Meat consumption and deaths -
mean_meat_sample = mean(foodSupply4$Meat)
mean_meat_population = mean(foodSupply2$Meat)
sd_meat_population = sd(foodSupply2$Meat)


#Sample
x1 <- foodSupply4$Meat
y1 <- foodSupply4$Deaths
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x1, y1, main = "Meat vs Deaths - Sample",
     xlab = "Meat Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
# Add regression line
plot(x1, y1, main = "Meat vs Deaths - Sample",
     xlab = "Meat Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
abline(lm(y1 ~ x1, data = foodSupply4 ), col = "blue")

#Population
x1 <- foodSupply2$Meat
y1 <- foodSupply2$Deaths
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x1, y1, main = "Meat vs Deaths - Population",
     xlab = "Meat Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
# Add regression line
plot(x1, y1, main = "Meat vs Deaths - Population",
     xlab = "Meat Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
abline(lm(y1 ~ x1, data = foodSupply2 ), col = "blue")


#Correlation of Sugar consumption and deaths -
mean_sugar_sample = mean(foodSupply4$Sugar...Sweeteners)
mean_sugar_population = mean(foodSupply2$Sugar...Sweeteners)
sd_sugar_population = sd(foodSupply2$Sugar...Sweeteners)


#Sample
x1 <- foodSupply4$Sugar...Sweeteners
y1 <- foodSupply4$Deaths
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x1, y1, main = "Sugar vs Deaths - Sample",
     xlab = "Sugar Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
# Add regression line
plot(x1, y1, main = "Sugar vs Deaths - Sample",
     xlab = "Sugar Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
abline(lm(y1 ~ x1, data = foodSupply4 ), col = "blue")

#Population
x1 <- foodSupply2$Sugar...Sweeteners
y1 <- foodSupply2$Deaths
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x1, y1, main = "Sugar vs Deaths - Population",
     xlab = "Sugar Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
# Add regression line
plot(x1, y1, main = "Sugar vs Deaths - Population",
     xlab = "Sugar Consumption", ylab = "Deaths",
     pch = 19, frame = FALSE)
abline(lm(y1 ~ x1, data = foodSupply2 ), col = "blue")


#Z-TEST

install.packages("BSDA")
library("BSDA")


#Animal Products
z.test(foodSupply4$Animal.Products, mu=mean_animal_products_population, sigma.x = sd_animal_products_population, alternative = "greater")


#Vegetables
z.test(foodSupply4$Vegetables, mu=mean_vegetables_population, sigma.x = sd_vegetables_population, alternative = "greater")

#Meat
z.test(foodSupply4$Meat, mu=mean_meat_population, sigma.x = sd_meat_population, alternative = "greater")

#Sugar
z.test(foodSupply4$Sugar...Sweeteners, mu=mean_sugar_population, sigma.x = sd_sugar_population, alternative = "greater")

#Cereals
z.test(foodSupply4$Cereals...Excluding.Beer, mu=mean_cereals_population, sigma.x = sd_cereals_population, alternative = "greater")
