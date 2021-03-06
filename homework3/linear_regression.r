apparent_porosity = c(18.0,18.3,16.3,6.9,17.1,20.4)
mean_pore_diameter = c(12,9.7,7.3,5.3,10.9,16.8)
brick_data = data.frame(apparent_porosity, mean_pore_diameter)
plot(apparent_porosity,mean_pore_diameter)
cor(apparent_porosity,mean_pore_diameter)
fit.lm = lm(mean_pore_diameter ~ apparent_porosity)
coeffs=coefficients(fit.lm); coeffs
abline(fit.lm)
summary(fit.lm)
sigma = sd(apparent_porosity)
x_bar = mean(apparent_porosity)
x_sum_squa = sum(apparent_porosity^2)
SSxx = x_sum_squa-((x_bar)^2)/length(apparent_porosity)
sigma_y = (sigma)*((1/6)*((10-x_bar)^2)/1637.2)^(1/2)