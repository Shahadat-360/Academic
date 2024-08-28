booth_1<- c("positive","positive", "negative","positive", "negative", "negative", "positive","positive","positive", "negative", "positive")
booth_2<- c("negative", "negative", "negative", "positive", "positive", "negative", "positive", "negative", "negative", "negative")
table1_x=table(booth_1)
table2_x=table(booth_2)

m=matrix(c(7,4,3,7),ncol = 2,byrow = TRUE,dimnames = list(c("Booth-1","Booth-2"),c("positive","negative")))
c1=sum(m[,1])
c2=sum(m[,2])
r1=sum(m[1,])
r2=sum(m[2,])
n=sum(m)
E11=(c1*r1)/n
E12=(c2*r1)/n
E21=(c1*r2)/n
E22=(c2*r2)/n

# E21 is less than 5 so we need to do "Yates" continuity correction
chi_yates=(((abs(m[1]-E11)-0.5)^2)/E11)+(((abs(m[2]-E21)-0.5)^2)/E21)+ ((abs(m[3]-E12)-0.5)^2/E12) + ((abs(m[4]-E22)-0.5)^2/E22)
# df=(r-1)(c-1)
alpha=0.05
chi_tab=qchisq(alpha,1,lower.tail = FALSE)
# chi_tab>chi_yates so H0 is accepted

pvalue=pchisq(chi_yates,1,lower.tail = FALSE)
# pvalue>alpha so H0 is accepted
chisq.test(m)