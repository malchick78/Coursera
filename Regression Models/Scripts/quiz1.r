x <- c(0.18, -1.54, 0.42, 0.95)
w <- c(2, 1, 3, 1)
y <- x*w
ybar <- mean(y)

x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
y <- c(1.39, 0.72, 1.55, 0.48, 1.19, -1.59, 1.23, -0.65, 1.49, 0.05)
fit <- lm(y ~ x - 1)
coef(fit)

library(datasets)
data(mtcars)
names(mtcars)
mpg <- mtcars$mpg
weight <- mtcars$wt
fit <- lm(mpg ~ weight)
coef(fit)

x <- c(8.58, 10.46, 9.01, 9.64, 8.86)
xbar <- mean(x)
sx <- sd(x)
z <- (x[1] - xbar) / sx

x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
y <- c(1.39, 0.72, 1.55, 0.48, 1.19, -1.59, 1.23, -0.65, 1.49, 0.05)
fit <- lm(y ~ x)
coef(fit)
mean(x)
