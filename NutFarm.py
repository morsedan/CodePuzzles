'''
o = a nut
\ = branch. A nut hitting this branch bounces right
/ = branch. A nut hitting this branch bounces left
_ = branch. A nut hitting this branch gets stuck in the tree
. = leaves, which have no effect on falling nuts
| = tree trunk, which has no effect on falling nuts
= empty space, which has no effect on falling nuts
'''

def shake_tree(tree):
    nut_row = []
    for char in tree[0]:
        if char == 'o':
            nut_row.append(1)
        else:
            nut_row.append(0)

    for row in tree[1:]:
        for i in range(len(row) - 1):
            if row[i] == '/':
                nut_row[i-1] += nut_row[i]
                nut_row[i] = 0
            elif row[i] == '\\':
                nut_row[i+1] += nut_row[i]
                nut_row[i] = 0
            elif row[i] == '_':
                nut_row[i] = 0

    return nut_row

tree = [" o ooo  ",
        " /    / ",
        "   /    ",
        "  /  /  ",
        "   ||   ",
        "   ||   ",
        "   ||   "]
print(shake_tree(tree))

tree = [" o o o  ",
        " \\    \\ ",
        "   \\    ",
        "  \\  \\  ",
        "   ||   ",
        "   ||   ",
        "   ||   "]

print(shake_tree(tree))  # [0,0,0,1,1,0,1,0]



tree = [" o o o  ",
        " _      ",
        "   _ _  ",
        "   ||   ",
        "   ||   ",
        "   ||   "]
print(shake_tree(tree))  # [0,0,0,0,0,0,0,0]

def shake_tree(tree):
    rows = len(tree)
    count = [0] * len(tree[0])

    for j, nut in enumerate(tree[0]):
        if nut == 'o':
            i = 1
            while i != rows - 1:
                obstacle = tree[i][j]
                if obstacle == '\\':
                    j += 1
                elif obstacle == '/':
                    j -= 1
                elif obstacle == '_':
                    break
                i += 1
            if i == rows - 1:
                count[j] += 1
    return count