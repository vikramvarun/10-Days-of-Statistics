# Enter your code here. Read input from STDIN. Print output to STDOUT
#Language R
data <- read.table("stdin",header = F, skip=1)
dat <- as.numeric(data)
n <- length(dat)
std <- sqrt(var(dat)*(n-1)/n)
cat(round(std,1))
