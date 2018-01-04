#Language R
A = ppois(5, lambda = 2.5) - ppois(4, lambda = 2.5)
B = round (A, 3)
write(B, stdout())
