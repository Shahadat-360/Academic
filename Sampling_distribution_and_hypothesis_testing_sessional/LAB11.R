
x=c(122,145,120,45,98,67,109,100,107,106,93,125,130,90,34,108,80,48,65,56)
alpha=0.05
md=110
y=sum(x>md)
n=sum(x!=md)
pvalue=1-pbinom(y-1,n,0.5)
# pvalue>alpha so H0 is accepted