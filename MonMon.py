def calculate_years(principal, interest, tax, desired):
    years = 0
    net_interest = interest - (interest * tax)
    earned = 0
    while principal < desired:
        earned += principal * net_interest
        principal += earned
        earned = 0
        years += 1
    return years

p = 1000
i = 0.05
t = 0.18
d = 1100

print(calculate_years(p, i, t, d))
print(calculate_years(1000,0.01625,0.18,1200), 14)