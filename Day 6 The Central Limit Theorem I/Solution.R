#Language R
mass = 9800
mean = 205*49
sd = 15*7
A = round (pnorm(mass, mean, sd), 4)
write (A, stdout())
