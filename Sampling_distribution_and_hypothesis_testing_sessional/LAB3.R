# H0:mu<=5
# H1:mu>5
x.bar=6.7
sd=7.1
alpha=0.05
mu=5
n=29

z=(x.bar-mu)/(sd/sqrt(n))
ztab=qnorm(alpha,lower.tail = FALSE)
# since Ztab>z ,so H0 is accepted

# pvalue
pvalue=pnorm(z,lower.tail = FALSE)
# since pvalue>alpha,so H0 is accepted

# mu is not equal 5
ztab1=qnorm(alpha/2)
ztab2=qnorm(1-alpha/2)

# pvalue
p.value=2*pnorm(z,lower.tail = FALSE)
# confidence interval find 
CI=c(x.bar+ztab1*sd/sqrt(n),x.bar+ztab2*sd/sqrt(n)) 
