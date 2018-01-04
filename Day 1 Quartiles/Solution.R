#Language R
input <- scan("stdin")
n <- input[1]
x <- input[2:(n+1)]
f <- input[(n+2):(2*n+1)]

v <- rep(x, f)
m <- median(v)
q_1 <- median(v[which(v<m)])
q_2 <- median(v[which(v>m)])
cat(format(q_2 - q_1, nsmall=1))
