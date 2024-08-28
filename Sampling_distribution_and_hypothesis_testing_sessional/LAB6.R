x1<-c(120,115,94,118,111,102,102,131,104,107,115,139,115,114,113,105,115,134,109,109,93,118,109,106,125)
x2<-c(150,142,119,127,141,149,144,142,149,161,143,140,148,149,141,146,159,152,135,134,161,130,125,141,
      148,153,145,137,147,169)

s1=sd(x1)
s2=sd(x2)
s1/s2

par(mfrow=c(1,2))
qqnorm(x1,main="qq plot for x1")
qqline(x1)
qqnorm(x2,main="qq plot for x2")
qqline(x2)

x1.bar=mean(x1)
x2.bar=mean(x2)
x1.var=var(x1)
x2.var=var(x2)
n1=length(x1)
n2=length(x2)
sp=((n1-1)*x1.var+(n2-1)*x2.var)/(n1+n2-2)

t=(x1.bar-x2.bar)/sqrt(sp*(1/n1+1/n2))
alpha=0.05
t.tab=qt(alpha/2,n1+n2-2)
# H0 is accepted