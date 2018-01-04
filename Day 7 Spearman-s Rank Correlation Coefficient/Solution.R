# Enter your code here. Read input from STDIN. Print output to STDOUT
#Language R
data <- read.table("stdin", header=F, skip=1)
dat <- t(data)
di2 <- (rank(dat[,1])-rank(dat[,2]))^2
result <- round(1-(6*sum(di2))/(10*(10^2-1)), 3)
write(result, stdout())
