blocking_p = 2 / 100
lamda = 2
H = 3 / 60
Au = lamda * H

# System A
channel_a = 19
cell_A = 394
A = 12
Ua = A / Au
subscriber_A = Ua * cell_A
percentage_market_penetration_for_A = (subscriber_A / 2000000) * 100

# System B
channel_b = 57
cell_B = 98
Ab = 45
Ub = Ab / Au
subscriber_B = Ub * cell_B
percentage_market_penetration_for_B = (subscriber_B / 2000000) * 100

# System C
channel_c = 100
cell_C = 49
Ac = 88
Uc = Ac / Au
subscriber_C = Uc * cell_C
percentage_market_penetration_for_C = (subscriber_C / 2000000) * 100

Total_number_of_subscriber = subscriber_A + subscriber_B + subscriber_C
Market_penetration_for_three_system = (Total_number_of_subscriber / 2000000) * 100

print("For system A:")
print("Number of users in System A:", Ua)
print("Total number of subscriber in system A:", subscriber_A)
print("Percentage market penetration for A:", percentage_market_penetration_for_A)

print("\nFor system B:")
print("Number of users in System B:", Ub)
print("Total number of subscriber in system B:", subscriber_B)
print("Percentage market penetration for B:", percentage_market_penetration_for_B)

print("\nFor system C:")
print("Number of users in System C:", Uc)
print("Total number of subscriber in system C:", subscriber_C)
print("Percentage market penetration for C:", percentage_market_penetration_for_C)

print("\nTotal number of subscribers for all three systems:", Total_number_of_subscriber)
print("Market penetration for all three systems:", Market_penetration_for_three_system)
