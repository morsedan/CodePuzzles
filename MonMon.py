from math import ceil, log

def calculate_years1(principal, interest, tax, desired):
    years = 0
    net_interest = interest - (interest * tax)
    earned = 0
    while principal < desired:
        earned += principal * net_interest
        principal += earned
        earned = 0
        years += 1
    return years
def calculate_years(principal, interest, tax, desired):
    # You COULD do a check for desired <= principal, but it's
    # not needed because the instructions say it will be true
    # and this algorithm handles the == case correctly.
    return ceil(log(float(desired) / principal, 1 + interest * (1 - tax)))
p = 1000
i = 0.05
t = 0.18
d = 1100

print(calculate_years(p, i, t, d))
print(calculate_years(1000,0.01625,0.18,1200), 14)
print(calculate_years(p, i, t, 900))