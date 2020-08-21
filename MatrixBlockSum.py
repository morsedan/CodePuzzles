'''
Brute force:
walk through each position
    make a list of valid positions from that
    total the valid positions
    set new matrix with answers

Better solutions:
memoize totals and any time they need to be calculated again, they'll be ready?

'''


class Solution:
    def matrixBlockSum(self, mat, K):
        row = [0] * len(mat[0])
        ans = [row] * len(mat)
        # print(ans)
        for i in range(len(mat)):
            new_row = [0] * len(mat[0])
            for j in range(len(mat[0])):

                total = 0
                valid_points = self.getValidXY(mat, i, j, K)
                print([i, j], valid_points)
                for point in valid_points:
                    total += mat[point[0]][point[1]]
                # print([i,j], total)
                # ans[i][j] = total
                # print(ans[i][j])
                # print(ans)
                new_row[j] = total
            ans[i] = new_row

        return ans

    def getValidXY(self, mat, i, j, K):
        points = []
        for x in range(i - K, i + K + 1):
            if x >= 0 and x < len(mat):
                # print(x)
                for y in range(j - K, j + K + 1):
                    if y >= 0 and y < len(mat[0]):
                        print([x, y])
                        points.append([x, y])

        return points

    def totalValidXY(self, mat, positions):
        pass


s = Solution()
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
k = 1
print("outside", s.matrixBlockSum(matrix, k))

matrix = [[67, 64, 78], [99, 98, 38], [82, 46, 46], [6, 52, 55], [55, 99, 45]]
k = 3
print("outside", s.matrixBlockSum(matrix, k))

# 1 2 3
# 4 5 6 
# 7 8 9


# 67, 64, 78
# 99, 98, 38
# 82, 46, 46
# 6, 52, 55
# 55, 99, 45