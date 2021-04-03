def calculate_years(principal, interest, tax, desired):
    years = 0
    while principal < desired:
        earnings = principal * interest
        net = earnings - earnings * tax
        principal += net
        years += 1
    return years

p = 1000
i = 0.05
t = 0.18
d = 1100

print(calculate_years(p, i, t, d))