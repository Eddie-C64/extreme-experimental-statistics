#Load the Faraway library
library("faraway")

#Load sublibrary of the library
library("stat500")

#Simiple Regression 
mod = lm(final ~ midterm, data = stat500)
summary(mod)

coef(mod)
fitted(mod)
predict(mod)
predict(mod, interval="confidence")
predict(mod, interval="confidence",level=.90)
residuals(mod)
rstandard(mod)

ls(mod)
mod$fitted.values

#Plotting regression
attach(stat500)
plot(final ~ midterm)
abline(coef(mod))

#Prediction values: the regression plots
my.pred = predict(mod, interval="confidence")
plot(final ~ midterm)
lines(midterm, my.pred[,1])
lines(midterm, my.pred[,2],col="blue",lty=2)
lines(midterm, my.pred[,3],col="blue",lty=2)

#Better fitted regression plots
plot(final ~ midterm)
lines(midterm[order(midterm)],my.pred[order(midterm),1])
lines(midterm[order(midterm)],my.pred[order(midterm),2],col="blue",lty=2)
lines(midterm[order(midterm)],my.pred[order(midterm),3],col="blue",lty=2)

#Diagnostics plots
plot(mod)
par(mfrow=c(2,2))
plot(mod)

#Check the normality assumption
shpiro.test(residuals(mod))

qqnorm(residuals(mod))

#non-constant error and transformation
rm(list=ls())
data(airquality)
head(airquality)
mod = lm(Ozone ~ Solar.R + Wind + Temp, data=airquality, na.action = na.exclude)
summary(mod)
plot(fitted(mod),residuals(mod))

logmod = lm(log(Ozone) ~ Solar.R + Wind + Temp, data=airquality, na.action=na.exclude)
plot(fitted(logmod),residuals(logmod))