# H0:mu>=14
# H1:mu<14

n=10
data=c(12.3,11.4,14.2,15.3,14.8,13.8,11.1,15.1,15.8,13.2)
mu=14.6
alpha=0.01
x.bar=mean(data)
data_sd=sd(data)
# t distribution when n<30
t=(x.bar-mu)/(data_sd/sqrt(n))
ttab=qt(alpha,n-1)
# since ttab falls in accepted region
# H0 is accepted

# pvalue
pvalue=pt(t,df=n-1)
# since pvalue>alpha H0 is accepted
boxplot(data,ylab="HB level",col = "gray")
qqnorm(data,main =  "Normal Q-Q plot of Hb level")
qqline(data)
