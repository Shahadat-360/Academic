# vector of outcomes
s=2:12
# vector of probabilities
ps=c(1:6,5:1)/36
names(ps)=c(1:6,5:1)
# Expected value
E=sum(s*ps)
# variance 
Vars=sum((s-E)^2*ps)

# plot the distribution of s
barplot(ps,
        ylim = c(0,0.2),
        ylab = "Probability",
        xlab = "S",
        col = "steelblue",
        space = 0,
        main = "Sum of two dice Rolls")

D=rep(1/6,6)
names(D)=1:6

# plot of the distribution of D
barplot(D,
        ylim = c(0,0.2),
        ylab = "Probability",
        xlab = "D",
        col = "steelblue",
        space = 0,
        main = "Outcomes of a single dice roll")
