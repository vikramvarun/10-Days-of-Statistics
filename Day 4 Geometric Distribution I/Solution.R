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
x <- as.numeric(readLines(input, n=1))
cat(format(round(dgeom(x-1,prob),digits=3),nsmall=3))
