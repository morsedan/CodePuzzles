"""
create dict of special squares
counter/position for each player
indicator for player turn



move X,
    checking for special space
    store new position
    check for doubles
    set player turn

return player's square, Game over!, or Player N wins
"""

class SnakesLadders:
    special_squares = {
        2: 38,
        7: 14,
        8: 31,
        15: 26,
        21: 42,
        28: 84,
        36: 44,
        51: 67,
        71: 91,
        78: 98,
        87: 94,
        16: 6,
        46: 25,
        49: 11,
        62: 19,
        64: 60,
        74: 53,
        89: 68,
        92: 88,
        95: 75,
        99: 80
    }

    player_turn = 1
    player1_position = 0
    player2_position = 0
    game_over = False

    def play(self, die1, die2):

        if self.game_over:
            return "Game over!"

        current_player = self.player_turn

        total = die1 + die2
        if current_player == 1:
            position = self.player1_position
            self.player1_position = self.determine_position(position, total)
            if die1 != die2:
                self.player_turn = 2
        else:
            position = self.player2_position
            self.player2_position = self.determine_position(position, total)
            if die1 != die2:
                self.player_turn = 1

        if self.player1_position == 100:
            self.game_over = True
            return 'Player 1 Wins!'
        elif self.player2_position == 100:
            self.game_over = True
            return 'Player 2 Wins!'

        position_str = ''
        if current_player == 1:
            position_str = f'{self.player1_position}'
        else:
            position_str = f'{self.player2_position}'

        return f"Player {current_player} is on square {position_str}"

    def determine_position(self, player, total):
        if player + total in self.special_squares:
            return self.special_squares[player + total]
        elif player + total > 100:
            temp_position = 100 - (player + total - 100)
            print(temp_position)
            if temp_position in self.special_squares:
                print(self.special_squares[temp_position])
                return self.special_squares[temp_position]
            return temp_position
        else:
            return player + total

sl = SnakesLadders()

print('P1', sl.play(3,4))
print('P2', sl.play(1,2))
print('P1', sl.play(3,4))
print('P2', sl.play(1,2))
print('P1', sl.play(3,3))
print('P1', sl.play(1,2))
print('P2', sl.play(3,4))
print('P1', sl.play(3,4))
print('P2', sl.play(59,0))
print('P1', sl.play(46,0))
print(sl.play(0,0))




























