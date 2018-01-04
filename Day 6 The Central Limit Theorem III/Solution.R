#Language R
prob1 = 0.975
prob2 = 0.025
mean = 500*100
sd = 80*10
A = qnorm(prob2, mean, sd)
B = qnorm(prob1, mean, sd)
C = round (A/100, 2)
D = round (B/100, 2)
write (C, stdout())
write (D, stdout())
