Pam=400*1e3
k=0.75
Pc=Pam/(1+(k**2)/2)
sideBand=0.5*(Pam-Pc)
power_saving=1-(sideBand/Pam)
print(Pc*100/Pam)
print(sideBand)
print(power_saving)

