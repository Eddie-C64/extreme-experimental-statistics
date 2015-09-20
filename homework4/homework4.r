#Homework 4
x = c(100, 125, 125, 150, 150, 200, 200, 250, 250, 300, 300, 350, 400, 400)
y = c(140, 150, 190, 220, 180, 300, 290, 410, 420, 440, 400, 580, 610, 670)

plot(x,y)
my.mod = lm(y~x)
round(coef(my.mod), digits = 5)

my.pred = predict(my.mod)
my.pred
plot(x,y)
lines(x,my.pred)

rm(list=ls())
#Clear the variables to reuse for this next part.
#Part 2
x = c(100, 125, 125, 150, 150, 200, 200, 250, 250, 300, 300, 350, 400, 400)
y = c(140, 130, 170, 220, 180, 320, 290, 390, 440, 450, 400, 600, 600, 600)
my.mod = lm(y~x)
coef(my.mod)

my.pred = predict(my.mod, interval="confidence")
plot(x,y)
lines(x, my.pred[,1])
lines(x, my.pred[,2], col='blue', lty=2)
lines(x, my.pred[,3], col='blue', lty=2)

rm(list=ls())
x = c(24, 25, 25, 15, 23, 19, 24, 23, 20, 17, 28, 31, 24, 26)
y = c(16, 15, 17, 21, 18, 31, 29, 39, 44, 44, 40, 59, 61, 67)
round(coef(lm(y~x)), digits = 5)
r = round(resid(lm(y~x)), digits = 3)
r
qqnorm(r)
shapiro.test(r)