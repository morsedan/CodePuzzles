class LinkedListNode:
    def __init__(self, value):
        self.value = value
        self.next = None

class LinkedList:
    def __init__(self, value):
        self.head = LinkedListNode(value)

    def print_all(self):
        values = []
        current = self.head
        while current is not None:
            values.append(str(current.value))
            current = current.next
        print(" -> ".join(values))

    def append(self, value):
        current = self.head
        while current.next is not None:
            current = current.next
        current.next = LinkedListNode(value)

    def reverse(self):
        new_head = self.head
        next_node = None
        previous = None

        while new_head is not None:
            next_node = new_head.next
            new_head.next = previous
            previous = new_head
            new_head = next_node

        self.head = previous
        return self.head

    def rec_rev(self, node):
        if node is None:
            print(f"None passed in: {node}")
            return node
        if node.next is None:
            return node

        next_node = self.rec_rev(node.next)
        node.next.next = node
        node.next = None
        self.head = next_node
        return self.head

head = LinkedList(1)
head.append(2)
head.append(3)
head.append(4)
head.append(5)
head.print_all()
head.reverse()
head.print_all()
head.rec_rev(head.head)
head.print_all()
LinkedList.rec_rev(head, None)