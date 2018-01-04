# Enter your code here. Read input from STDIN. Print output to STDOUT
#Language R
all <- scan("stdin")
n <- all[1]
x <- all[1:n + 1]
y <- all[1:n + n+1]

m_x <- mean(x)
m_y <- mean(y)
sd_x <- sqrt(mean(x^2) - m_x^2)
sd_y <- sqrt(mean(y^2) - m_y^2)

corr <- sum((x - m_x)*(y - m_y)) / (n * sd_x * sd_y)
cat(corr)
