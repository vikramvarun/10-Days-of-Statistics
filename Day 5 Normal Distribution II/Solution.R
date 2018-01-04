#Language R
A = round ( (100*(1 - pnorm(80, 70, 10))), 2)
B = round ( (100*(1 - pnorm(60, 70, 10))), 2)
C = round ( (100*(pnorm(60, 70, 10))), 2)
write (A,stdout())
write (B,stdout())
write (C,stdout())
