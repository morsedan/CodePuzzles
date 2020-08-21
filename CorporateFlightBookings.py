'''
b = [[1,2,10],[2,3,20],[2,5,25]]
n = 5

10
flight  seats               total
1       10          10      10
2       -10 20  25  35      45
3           -20 -25 -45
4
5

flight  seats           total
1       10              10
2       10  20  25      55
3           20  25      45
4               25      25
5               25      25

*Assuming

initialize an array with n zeroes
for flight in range(first - 1, last):
    answer[flight] += number

'''

class Solution:
    def corpFlightBookings(self, bookings, n: int):
        answer = [0] * n
        for i, j, k in bookings:
            for flight in range(i - 1, j):
                answer[flight] += k
        return answer

s = Solution()

b = [[1,2,10],[2,3,20],[2,5,25]]
n = 5
print([10,55,45,25,25], "=?", s.corpFlightBookings(b, n))  # [10,55,45,25,25]

b = [[1,2,10],[1,1,20],[1,1,25]]
n = 5
print([55,10,0,0,0], "=?", s.corpFlightBookings(b, n))  # [10,55,45,25,25]