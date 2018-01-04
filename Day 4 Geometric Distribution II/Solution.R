# Enter your code here. Read input from STDIN. Print output to STDOUT
#Language R
input <- file('stdin', 'r')
line <- readLines(input, n=1, ok=F)
array <- strsplit(line, " ")[[1]];
numbers <- c()
for(i in 1:length(array)){
  numbers <- append(numbers, as.numeric(array[i]))
}
prob <- numbers[1]/numbers[2]
size <- as.numeric(readLines(input, n=1)) - 1
sum <- 0
for(x in 0:size){
    sum <- sum + dgeom(x,prob)
}
cat(format(round(sum,digits=3),nsmall=3))
