class Solution:
    def numRabbits(self, answers) -> int:
        '''
        each different answer indicates a different color
        so add up the total of the answers, there are at least
        that many rabbits
        plus one more for each color
        Is that all there is to it?
        zero is an exception if there's more than 1 that
        answers zero
        as is any color where the instances of that answer are
        more than the answer
        so the (number of answers / answer) is the number of times
        to add that answer ({10:24}->24/10=2.4, 10*3
        zero is still an exception because you can't divide 0
        so for zero just add the number of answers

        make a dict {answer: number_that_give_this_answer}

        for answer,
            if answer is 0
                total += answer
            multiple is (number_t_g_a // (answer + 1)) + 1
            total += (answer + 1) * multiple
        '''
        total = 0
        answer_dict = {}
        for answer in answers:
            if answer in answer_dict:
                answer_dict[answer] += 1
            else:
                answer_dict[answer] = 1

        for answer in answer_dict:
            if answer == 0:
                total += answer_dict[answer]
            else:
                multiple = (answer_dict[answer] // (answer + 1))
                if (answer_dict[answer] % (answer + 1)) != 0:
                    multiple += 1
                total += (answer + 1) * multiple

        return total
        pass

s = Solution()

answers = [10, 10, 10]  # 11
print(11, s.numRabbits(answers))

answers = [1, 1, 2]  # 5
print(5, s.numRabbits(answers))

answers = [1, 1, 0, 0, 5]  # 10
print(10, s.numRabbits(answers))

answers = [1, 1, 0, 0, 5, 1]  # 12
print(12, s.numRabbits(answers))

answers = [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]  # 11
print(11, s.numRabbits(answers))

answers = [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]  # 22
print(22, s.numRabbits(answers))

answers = [0, 0]  # 2
print(2, s.numRabbits(answers))

answers = []  # 0
print(0, s.numRabbits(answers))