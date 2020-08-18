from _collections import deque

class MyNode:
    def __init__(self, value):
        self.value = value
        self.neighbors = []

    def add_neighbor(self, value):
        self.neighbors.append(MyNode(value))

    def print_all(self):
        visited = set()
        values = []
        queue = deque()
        current = self
        queue.append(current)
        visited.add(current)

        while len(queue) > 0:
            current = queue.popleft()
            values.append(str(current.value))
            for neighbor in current.neighbors:
                if neighbor not in visited:
                    queue.append(neighbor)
                    visited.add(neighbor)

        print(", ".join(values))

    def bfs(self, target):
        visited = set()
        queue = deque()
        current = self
        path = [current]
        queue.append(path)

        while len(queue) > 0:
            current_path = queue.popleft()
            last = current_path[-1]
            if last.value == target:
                return [node.value for node in current_path]
            for neighbor in last.neighbors:
                if neighbor not in visited:
                    visited.add(neighbor)
                    queue.append(current_path + [neighbor])

    def bft(self):
        values = []
        visited = set()
        queue = deque()
        queue.append(self)
        visited.add(self)

        while len(queue) > 0:
            current = queue.popleft()
            values.append(current.value)
            for neighbor in current.neighbors:
                if neighbor in visited:
                    print("visited!")
                    continue
                visited.add(neighbor)
                queue.append(neighbor)

        return values

    def dfs(self, target):
        visited = set()
        stack = deque()
        path = [self]
        stack.append(path)

        while len(stack) > 0:
            current_path = stack.pop()
            last = current_path[-1]
            if last.value == target:
                return [node.value for node in current_path]
            for neighbor in last.neighbors:
                if neighbor in visited:
                    print("visited!")
                    continue
                visited.add(neighbor)
                stack.append(current_path + [neighbor])



node4 = MyNode(4)
node7 = MyNode(7)
node13 = MyNode(13)

node1 = MyNode(1)
node6 = MyNode(6)
node14 = MyNode(14)

node6.neighbors.append(node4)
node6.neighbors.append(node7)
node14.neighbors.append(node13)

node3 = MyNode(3)
node10 = MyNode(10)

node3.neighbors.append(node1)
node3.neighbors.append(node6)
node10.neighbors.append(node14)

node8 = MyNode(8)

node8.neighbors.append(node3)
node8.neighbors.append(node10)
node8.neighbors.append(node6)

print(node8.bfs(4))
print(node8.bft())
node8.print_all()
node6.print_all()
print(node8.dfs(4))