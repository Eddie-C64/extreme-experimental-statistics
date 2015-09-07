#Question 3 on homework
x = c(5,12,14,17,23,30,40,51,55,67,72,84,96,112,121)
y = c(4,10,13,15,15,25,27,47,38,46,53,74,82,99,104)
mean(x)
mean(y)
sd(x)
sd(y)
var(y)

#for clearing console cat("\014")
#Question 4 load library(faraway)
round(mean(pima$bmi), digits = 3)
pima[nrow(pima),]
round(cor(pima$diabetes, pima$diastolic), digits = 3)
summary(pima)
plot(diabetes ~ diastolic, data=pima)

#Question 5
z = c(29,41,22,27,23,35,30,33,24,27,28,22,25)
t.test(z, mu = 25, alternative = "greater")

#Since the p value = 0.03182, it is less then 0.05 we reject the null hypothesis.