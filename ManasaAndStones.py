def stones(n, a, b):
    ans = [(n - 1) * a]

    for combination in range(1, n):
        ans.append(ans[-1] - a + b)

    ansSet = set(ans)
    return sorted(ansSet)

print(stones(4, 10, 100))
print(stones(3, 1, 2))