#Language R
Nums <- scan(file="stdin")
Nums <- Nums[2:length(Nums)]

cat(mean(Nums), "\n")
cat(median(Nums), "\n")
cat(which.max(tabulate(Nums)), "\n")
