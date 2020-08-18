
def nb_year(p0, percent, aug, p):
    year_count = 1

    # while p0 < p:
    #     p0 = p0 + (p0 * (percent / 100)) + aug
    #     year_count += 1

    if percent is None:
        percent = 0

    if p0 >= p:
        return 0

    new_p0 = p0 + int(p0 * percent / 100) + aug

    year_count += nb_year(new_p0, percent, aug, p)

    return year_count

def nb_year(population, percent, aug, target):
    year = 0
    while population < target:
        population += population * percent / 100. + aug
        year += 1
    return year 

    def nb_year(p0, percent, aug, p, years = 0):
        if p0 < p:
            return nb_year(p0 + int(p0 * percent / 100) + aug, percent, aug, p, years + 1)
        return years

    p0 = 1000
    percent = 2
    aug = 50
    p = 1200
    print(nb_year(p0, percent, aug, p))

    p0 = 1000
    percent = 4
    aug = -50
    p = 900
    print(nb_year(p0, percent, aug, p))

    p0 = 1000
    percent = None
    aug = 50
    p = 1400
    print(nb_year(p0, percent, aug, p))
