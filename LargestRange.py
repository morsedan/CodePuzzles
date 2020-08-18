'''
set begining to i
iterate:
    check if i+1 is next:
        set end to i+1
    otherwise:
        check if longer:
            set if so
'''

def largestRange(array):
    # Write your code here.
    arr_set = set(array)
    sorted_arr = list(arr_set)
    sorted_arr.sort()

    longest = [0, 0]
    current_ran = [0, 0]
    for i in range(1,len(sorted_arr)):
        if sorted_arr[i] == sorted_arr[i-1] + 1:
            if current_ran == longest:
                current_ran[0] = i - 1
            current_ran[1] = i
        else:
            if (current_ran[1] - current_ran[0]) > (longest[1] - longest[0]):
                longest = current_ran.copy()
                current_ran[0], current_ran[1] = i, i

    if (current_ran[1] - current_ran[0]) > (longest[1] - longest[0]):
        longest = current_ran.copy()

    return [sorted_arr[longest[0]], sorted_arr[longest[1]]]

arr = [1, 11, 3, 0, 15, 5, 2, 4, 10, 7, 12, 6]
print(largestRange(arr))
