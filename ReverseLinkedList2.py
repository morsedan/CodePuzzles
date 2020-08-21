class LinkedListNode:
    def __init__(self, value, next=None):
        self.value = value
        self.next = next

class LinkedList:
    def __init__(self, value):
        self.head = LinkedListNode(value)

    def push(self, value):
        new_node = LinkedListNode(value)
        current = self.head
        while current.next is not None:
            current = current.next
        current.next = new_node

    def print_all(self):
        values = []
        current_node = self.head
        while current_node is not None:
            values.append(str(current_node.value))
            current_node = current_node.next
        print(' -> '.join(values))

    def reverse(self):
        current = self.head
        previous = None
        next_node = None

        while current is not None:
            next_node = current.next
            current.next = previous
            previous = current
            current = next_node
        self.head = previous
        return self.head

    def rec_rev(self, node):
        if node is None:
            return node
        if node.next is None:
            return node

        next_node = self.rec_rev(node.next)
        node.next.next = node
        self.head = next_node
        node.next = None
        return self.head


ll = LinkedList(1)
ll.push(2)
ll.push(3)
ll.push(4)
ll.push(5)
ll.push(6)
ll.print_all()
ll.reverse()
ll.print_all()
ll.rec_rev(ll.head)
ll.print_all()