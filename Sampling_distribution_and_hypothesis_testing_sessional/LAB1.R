Iq=c(2,4,3,23,25,27,28,13,15,16,20,14,35,33,32,21,35,40,42,22,33,13,17,20,25,29,27,40,38,31)
population_mean=mean(Iq)
population_variance=var(Iq)
length_IQ=length(Iq)
population_sd=sd(Iq)

# checking normality
qqnorm(Iq)
qqline(Iq)

# point estimation
set.seed(1246)
x=sample(Iq,10,replace = TRUE)
p_mean=mean(x)
p_sd=sd(x)

z=abs(qnorm(0.025,0,1))
# Interval estimation
lower=p_mean-z*p_sd/sqrt(10)
upper=p_mean+z*p_sd/sqrt(10)
# 95% confidence interval for population mean(13.56 ,29.63)

# sampling distribution mean
choose(30,10)
nsample=rep(0,300000)
for (i in 1:300000) {
  nsample[i]=mean(sample(Iq,10,replace = TRUE))
}
hist(nsample)
nsam_mean=mean(nsample)
bias=mean(nsample)-mean(Iq)

#sample distribution for medium
nsample2=rep(0,300000)
for (i in 1:300000) {
  nsample2[i]=median(sample(Iq,10,replace = TRUE))
}
hist(nsample2)
nsam2_median=median(nsample2)
bias=median(nsample2)-median(Iq)

# efficiency check 
L1=length(nsample)
V1=sum((nsample-population_mean)^2)/L1

L2=length(nsample2)
V2=sum((nsample2-median(Iq))^2)/L2

# V1 is smaller than V2 so V1 is more efficient
