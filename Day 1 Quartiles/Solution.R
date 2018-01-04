# Enter your code here. Read input from STDIN. Print output to STDOUT
#Language R
l2i <- function(line) as.integer(strsplit(line, split=" ")[[1]])
text <- readLines("stdin", warn=F)

vals <- l2i(text[2])
med <- median(vals)

cat(c(median(vals[vals < med]),
      med,
      median(vals[vals > med])), sep="\n")
