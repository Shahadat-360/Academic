x=c(120,115,94,118,111,102,102,131,104,107,115,139,115,114,113,105,115,134,109,109,93,118,109,106,125)

sigma2=400
mu=130
df=length(x)
chisquare=(sum(x-mu)^2)/sigma2
pvalue=2*min(pchisq(chisquare,df),1-pchisq(chisquare,df))
# pavlue<alpha so H0 is rejected