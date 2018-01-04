#Language R
tickets = 250
mean = 2.4*100
sd = 2*10
A = round (pnorm(tickets, mean, sd), 4)
write (A, stdout())
