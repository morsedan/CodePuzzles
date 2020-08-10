'''
river_count = 0
track visited positions
for each position,
	if it's a 0, or in visited,
		mark it visited and move to the next one
	BFS to mark visited and increase river_count by 1
return river_count
'''

from collections import deque


def riverSizes(matrix):
    # Write your code here.
    river_sizes = []
    visited = set()
    queue = deque()

    for x in range(len(matrix)):
        for y in range(len(matrix[0])):
            print("starting loop", [x,y])
            value = matrix[x][y]

            if value == 0 or (x, y) in visited:
                print(visited)
                visited.add((x, y))
                print(visited)
                print([x,y],"break", value == 0, (x,y) in visited)

                continue
            queue.append((x, y))
            visited.add((x, y))
            print("appended", [x,y])

            size = 1
            while len(queue) > 0:
                current = queue.popleft()
                left, right, up, down = (current[0], current[1] - 1), \
                                        (current[0], current[1] + 1), \
                                        (current[0] - 1, current[1]), \
                                        (current[0] + 1, current[1])
                print(current, up, down, left, right)
                if up[0] >= 0 and up not in visited:
                    # print([x,y], up)
                    # print(matrix[x][y], 'found one!', matrix[up[0]][up[1]])
                    visited.add(up)
                    if matrix[up[0]][up[1]] == 1:
                        queue.append(up)
                        size += 1
                        print("added 1 U")
                if down[0] < len(matrix) and down not in visited:
                    visited.add(down)
                    if matrix[down[0]][down[1]] == 1:
                        queue.append(down)
                        size += 1
                        print("added 1 D")
                if left[1] >= 0 and left not in visited:
                    visited.add(left)
                    if matrix[left[0]][left[1]] == 1:
                        queue.append(left)
                        size += 1
                        print("added 1 L", left)
                if right[1] < len(matrix[0]) and right not in visited:
                    visited.add(right)
                    if matrix[right[0]][right[1]] == 1:
                        queue.append(right)
                        size += 1
                        print("added 1 R")
            river_sizes.append(size)
        # print([x,y], matrix[x][y])
    return river_sizes


matrix = [[1, 1, 0],
          [0, 1, 1],
          [1, 1, 0]]
print(riverSizes(matrix))