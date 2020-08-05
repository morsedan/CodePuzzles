'''
walk through t, if this letter == the <index> letter in s,
advance the index of s
if at any point, s_index == len(s) then return True
'''

class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        if s == "":
            return True
        s_index = 0
        for i in range(len(t)):
            if t[i] == s[s_index]:
                s_index += 1
                if s_index == len(s):
                    return True
        return False

s = Solution()
string1 = "abc"
string2 = "ahbgdc"
print(s.isSubsequence(string1, string2))

string1 = "axc"
string2 = "ahbgdc"
print(s.isSubsequence(string1, string2))

string1 = "acb"
string2 = "ahbgdc"
print(s.isSubsequence(string1, string2))

string1 = "ahbgdc"
string2 = "ahbgdc"
print(s.isSubsequence(string1, string2))

string1 = "dc"
string2 = "ahbgdc"
print(s.isSubsequence(string1, string2))

string1 = "ac"
string2 = "ahbgdc"
print(s.isSubsequence(string1, string2))