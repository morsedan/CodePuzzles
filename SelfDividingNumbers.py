class Solution:
    def selfDividingNumbers(self, left: int, right: int):
        result = []

        for number in range(left, right + 1):
            
            if number < 10:
                result.append(number)
                continue
            can_divide = True
            digits_to_check = set([int(num_str) for num_str in str(number)])
            if 0 in digits_to_check:
                continue
            for digit in digits_to_check:
                if number % digit != 0:
                    can_divide = False
            if can_divide:
                result.append(number)
        return result

s = Solution()
left = 1
right = 22
print(s.selfDividingNumbers(left, right))  # [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]

left = 128
right = 128
print(s.selfDividingNumbers(left, right))  # [128]
