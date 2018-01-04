# Enter your code here. Read input from STDIN. Print output to STDOUT
#Languege R
## Combinations

comb <- function(n, x) {
  factorial(n)/(factorial(x) * factorial(n - x))
}

binom_prob <- function(n,x,p) {
   comb(n,x) * p**x * (1-p)**(n-x)
}


## Day 4: Binomial Distribution II

### 2 or less defects
cat(round(sum(binom_prob(10, 0:2, 0.12)), 3), "\n")

### 2 or more defects
cat(round(sum(binom_prob(10, 2:10, 0.12)), 3))
