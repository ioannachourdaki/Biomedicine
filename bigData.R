# Use library UsingR
library(UsingR)

data("wellbeing")
# View wellbeing data
View(wellbeing)

## My variable X = Health.spending

# Check for NA values
is.na(wellbeing$Health.spending)

# Question 1
mean(wellbeing$Health.spending)

# Question 2
# Load the country whose Health.spending is equal to the max value of 
# Health.spending column
wellbeing$Country[wellbeing$Health.spending == max(wellbeing$Health.spending)]

# Question 3
# Sort wellbeing based on Health.spending values in descending order
wellbeing2 = wellbeing[order(-wellbeing$Health.spending),]
View(wellbeing2)

# Question 4
wellbeing2$Country[1:3]

# Install and load library "ggplot2" for plotting
install.packages("ggplot2")
library(ggplot2)

# Question 5
ggplot(wellbeing, aes(Health.spending, Well.being, color="red")) + geom_point()

# Question 6
wellbeing3 = wellbeing[wellbeing$Health.spending > mean(wellbeing$Health.spending),]
View(wellbeing3)

# Question 7
# Sort wellbeing3 based on Well.being values in descending order and plot
wellbeing3 = wellbeing3[order(-wellbeing3$Well.being),]
barplot(wellbeing3$Well.being, names.arg = wellbeing3$Country, ylab = "Wellbeing", ,las=2, main = "Wellbeing by Country", col="cadetblue")
