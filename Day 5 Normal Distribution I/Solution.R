#Language R
A = round (pnorm(19.5, 20, 2), 3)
B = round ((pnorm(22, 20, 2) - pnorm(20, 20, 2)), 3)
write (A,stdout())
write (B,stdout())
