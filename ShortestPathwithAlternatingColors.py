from _collections import deque

class Solution:
    def shortestAlternatingPaths(self, n: int, red_edges, blue_edges):
        queue = deque()  # append to add, popleft to remove for FIFO
        path = []
        
        return []

s = Solution()
n = 3
red_edges = [[0,1],[1,2]]
blue_edges = []
print(s.shortestAlternatingPaths(n, red_edges, blue_edges))