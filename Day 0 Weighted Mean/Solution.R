#Language R
# Enter your code here. Read input from STDIN. Print output to STDOUT
Nums <- scan("stdin")
n <- Nums[1]
x <- Nums[2:(n+1)]
w <- Nums[(n+2):(2*n+1)]
result = sum(x*w)/sum(w)
cat(format(round(result, digits=1), nsmall=1))
