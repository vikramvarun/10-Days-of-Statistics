# Enter your code here. 
#Read input from STDIN. Print output to STDOUT
#Language R
readf <- readLines(file("stdin"), warn = FALSE)

f <- as.numeric(c(strsplit(readf[1], " ")[[1]]))
boys <- f[1]
girls <- f[2]

p <- boys / (boys+girls)

prob3 <- dbinom(3, 6, p) #returns density of a Binomial distribution
prob4 <- dbinom(4, 6, p)
prob5 <- dbinom(5, 6, p)
prob6 <- dbinom(6, 6, p)

atLeast3 <- prob3+prob4+prob5+prob6

cat(format(round(atLeast3, 3), nsmall = 3))
