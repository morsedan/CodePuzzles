'''
 Break main string into substrings by "#"
 The last two characters of any substring will be a single letter
 If the last character in s is "#", then the final two characters will be a single letter, otherwise they are two letters
 Once this is done, just decode it.
'''

class Solution:
    def freqAlphabets(self, s: str) -> str:
        if s == '':
            return s
        new_string = ''
        sub_strings = s.split("#")
        lastLetterGreaterThanI = True if s[-1] == "#" else False
        # print(sub_strings)
        # print(lastLetterGreaterThanI)

        for i in range(len(sub_strings)):
            end = sub_strings[i][-2:]
            # print(end)



            if sub_strings[i] == '':
                continue
            elif len(sub_strings[i]) == 2 and i != len(sub_strings) - 1:
                new_string += self.num_to_letter(sub_strings[i])
            elif len(sub_strings[i]) == 1:
                new_string += self.num_to_letter(sub_strings[i])
            else:
                for number in sub_strings[i][:-2]:
                    new_string += self.num_to_letter(number)
                if i == len(sub_strings) - 1 and lastLetterGreaterThanI:
                    new_string += self.num_to_letter(sub_strings[i][-2:])
                elif lastLetterGreaterThanI or i != len(sub_strings) - 1:
                    new_string += self.num_to_letter(end)
                else:
                    for number in end:
                        new_string += self.num_to_letter(number)

        return new_string

    
    def num_to_letter(self, number):
        index = int(number) - 1
        letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i',
                   'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
                   's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
        return letters[index]

s = Solution()

test1 = "10#11#12"  # "jkab"
test2 = "1326#"  # "acz"
test3 = "25#"  # "y"
test4 = "12345678910#11#12#13#14#15#16#17#18#19#20#21#22#23#24#25#26#"  # "abcdefghijklmnopqrstuvwxyz"
test5 = ""  # ""
test6 = "4"  # "d"
test7 = "26#11#418#5"  # "zkdre"

print(s.freqAlphabets(test1))
print(s.freqAlphabets(test2))
print(s.freqAlphabets(test3))
print(s.freqAlphabets(test4))
print(s.freqAlphabets(test5))
print(s.freqAlphabets(test6))
print(s.freqAlphabets(test7))