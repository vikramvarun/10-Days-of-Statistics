# Enter your code here. Read input from STDIN. Print output to STDOUT
#Language R
all <- scan("stdin")
n <- length(all) / 2
x <- all[1:n * 2 - 1]
y <- all[1:n * 2]
x_0 = 80

b <- (n * sum(x*y) - sum(x)*sum(y)) / (n * sum(x^2) - sum(x)^2)
a <- mean(y) - b * mean(x)

cat(a + b * x_0)
