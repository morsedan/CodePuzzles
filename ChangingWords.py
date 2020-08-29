def stringsRearrangement(words):
    letters = set()
    for word in words:
        for letter in word:
            letters.add(letter)
    print(''.join(letters))

    word_set = set(words)

def dif_by_one(word1, word2):
    dif_count = 0
    for i in len(word1):
        if word1[i] != word2[i]
            dif_count += 1
        if dif_count > 1:
            return False
    return dif_count == 1

    return False




inputArray = ["aba", "bbb", "bab"] # False
print(stringsRearrangement(inputArray))
inputArray = ["ab", "bb", "aa"] # True
print(stringsRearrangement(inputArray))
inputArray = ["q", "q"] # False
print(stringsRearrangement(inputArray))
inputArray = ["zzzzab", "zzzzbb", "zzzzaa"] # True
print(stringsRearrangement(inputArray))
inputArray = ["ab", "ad", "ef", "eg"] # False
print(stringsRearrangement(inputArray))
inputArray = ["abc", "bef", "bcc", "bec", "bbc", "bdc"] # True
print(stringsRearrangement(inputArray))
inputArray = ["abc", "abx", "axx", "abc"] # False
print(stringsRearrangement(inputArray))
inputArray = ["abc", "abx", "axx", "abx", "abc"] # True
print(stringsRearrangement(inputArray))
inputArray = ["f", "g", "a", "h"] # True
print(stringsRearrangement(inputArray))
inputArray = ["ff", "gf", "af", "ar", "hf"] # True
print(stringsRearrangement(inputArray))
inputArray = ["a", "b", "c"] # True
print(stringsRearrangement(inputArray))
