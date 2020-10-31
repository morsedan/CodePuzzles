def howMany(sentence):
    # Variables & Constants
    alphabet_with_misc = "abcdefghijklmnopqrstuvwxyz-"
    punctuation = ".,?!"
    stripped_sentence = ""
    words = []

    # Strip punctuation
    for letter in sentence:
        if letter not in punctuation:
            stripped_sentence += letter

    # Add words without invalid characters to list of words
    for potential_word in stripped_sentence.split():
        this_word = ""
        for letter in potential_word:
            if letter.lower() in alphabet_with_misc:
                this_word += letter
        if this_word == potential_word:
            words.append(this_word)

    return len(words)

string = """
he is a good programmer, he won 865 competitions, 
but sometimes he dont. What do you think? All test-cases should pass. Done-done?
"""

print(howMany(string))

string = "jds dsaf lkdf kdsa fkldsf, adsbf ldka ads? asd bfdal ds bf[l. akf dhj ds 878  dwa WE DE 7475 dsfh ds  RAMU 748 dj."
print(howMany(string))