class Solution:
    def numMatchingSubseq(self, S: str, words) -> int:
        indices_dict = {}
        latest_used = -1
        count = 0

        for i in range(len(S)):
            if S[i] in indices_dict:
                indices_dict[S[i]].add(i)
            else:
                indices_dict[S[i]] = set()
                indices_dict[S[i]].add(i)
                # latest_used[S[i]] = -1
        
        # print(indices_dict)
        
        for word in words:
            is_substring = True
            for letter in word:
                if letter in indices_dict:
                    latest = latest_used#[letter]
                    if [element for element in indices_dict[letter] if element > latest] != []:
                        latest_used = min([element for element in indices_dict[letter] if element > latest])
                    else:
                        # print("letter used up")
                        is_substring = False
                        break
                else:
                    # print("letter not in str")
                    is_substring = False
                    break

            if is_substring:
                # print(word, count)
                count += 1

            latest_used = -1

        return count