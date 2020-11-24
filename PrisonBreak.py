def prison(n, m, h, v):
    longestH = longest_contiguous(h) + 1
    longestV = longest_contiguous(v) + 1
    # we will never have a hole that isn't a rectangle
    # all we need to do is find the largest vertical and horizontal gaps
    # then multiply them
    return longestH * longestV

def longest_contiguous(array):
    sorted_array = sorted(array)
    longest = 0
    current_longest = 0

    # if no bars are removed, there isn't a contiguous run
    if sorted_array == []:
        return 0

    # iterate through the elements in the array
    for i in range(1, len(sorted_array)):
        # if element at the index before the current index is 1 less than this element
        if sorted_array[i - 1] + 1 == sorted_array[i]:
            # this streak of contiguously removed bars increases
            current_longest += 1
            # check to see if this streak is longer than the previous longest
            if current_longest > longest:
                # set it if it is
                longest = current_longest
        else:
            # reset the current longest
            current_longest = 0
    # increase for the last element in the contiguous run
    longest += 1

    return longest

width, height = 8, 10
horizontals = [3]
verticals = [2, 5, 9, 4, 17, 11, 7, 21, 3]
print("here", longest_contiguous(verticals))
largest = prison(width, height, horizontals, verticals)
print(largest)
width, height = 3, 2
horizontals = [1, 2, 3]
verticals = [1, 2]
print(prison(width, height, horizontals, verticals))
