# Enter your code here. Read input from STDIN. Print output to STDOUT
#Language R
data<-readLines(file("stdin"),warn=FALSE)
X=as.numeric(unlist(strsplit(data[2]," ")))
Y=as.numeric(unlist(strsplit(data[3]," ")))
S=sort(do.call(c,mapply(rep,X,Y)))

mid=length(S) %/% 2
cat(format(round(median(tail(S,mid))-median(S[1:mid]),1),nsmall=1))
