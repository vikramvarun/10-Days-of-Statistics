# Enter your code here. Read input from STDIN. Print output to STDOUT
# Language : R
data<- scan("/dev/stdin")
M <- data[1]
N <- data[2]
Q <- data[(M+1)*N + 3]
training <- matrix(data[c(3:(N*(M+1) + 2))], nrow = N, ncol = (M+1), byrow = T)
new <- matrix(data[c(((M+1)*N + 4):length(data))], nrow = Q, ncol = M, byrow = T)
Y <- training[,(M+1)]
X <- training[,1:M] 
model <- lm (formula = Y~X)
B <- matrix(coef(model), byrow = F)
A <- matrix(1, nrow = Q, ncol = 1)
newdata <- cbind(A, new)
result <- round((newdata %*% B), 2) 
write(result, stdout())
