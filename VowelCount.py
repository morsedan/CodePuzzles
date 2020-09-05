def get_count(input_str):
    num_vowels = 0
    # your code here
    for letter in input_str:
        if letter in 'aeiou':
            num_vowels += 1

    return num_vowels

print(get_count('hello there'))