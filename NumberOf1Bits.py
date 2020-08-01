class Solution:
    def hammingWeight(self, n: int) -> int:
        # return bin(n).count('1') # super fast solution
        one_bits = 0
        largest_possible = 2
        for i in range(1, n.bit_length()):
            largest_possible *= 2
        print(largest_possible)
        while n > 0:
            print(n)
            if n >= largest_possible:
                one_bits += 1
                n -= largest_possible
            largest_possible /= 2
        return one_bits

s = Solution()

number = 11
print(s.hammingWeight(number))