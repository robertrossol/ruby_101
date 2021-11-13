# rubocop:disable Layout/LineLength
# Tic Tac Toe is a 2 player game played on a 3x3 board. Each player takes a turn and
# marks a square on the board. First player to reach 3 squares in a row, including diagonals,
# wins. If all 9 squares are marked and no player has 3 squares in a row, then the game is a tie.

# 1. Display the initial empty 3x3 board.
# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!
# rubocop:enable Layout/LineLength
require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WIN_TOTAL = 2
WINNING_COMBINATIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                        [1, 4, 7], [2, 5, 8], [3, 6, 9],
                        [1, 5, 9], [3, 5, 7]]
def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}'s. Computer is #{COMPUTER_MARKER}'s."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def initialize_scoreboard
  new_scoreboard = {
                    'Player' => 0,
                    'Computer' => 0
                   }
end

def display_scoreboard(scoreboard)
  puts "Scoreboard:"
  puts "Player Wins: #{scoreboard['Player']}"
  puts "Computer Wins: #{scoreboard['Computer']}"
end

def determine_turn_order
  first_player = ''
  prompt "Who should go first? (p = player/c = computer)"
  prompt "Hit enter (or enter anything else to let the Computer decide"
  
  first_player = gets.chomp

  case first_player
  when 'p'
    first_player = 'Player'
  when 'c'
    first_player = 'Computer'
  else
    first_player = ['Player', 'Computer'].sample
  end
  first_player
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delim=', ', final='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{final} ")
  else
    arr[-1] = "#{final} #{arr.last}"
    arr.join(delim)
    # arr[0..-2].join(delim)+' '+final+' '+arr[-1].to_s
  end
end

def at_risk_squares(brd, marker)
  WINNING_COMBINATIONS.each_with_object([]) do |line, arr|
    if brd.values_at(*line)-[marker] == [INITIAL_MARKER]
      arr << line[brd.values_at(*line).index(INITIAL_MARKER)]
      return arr if !arr.empty?
    end
  end
end

def place_piece!(brd, current_player)
  if current_player == "Player"
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = (at_risk_squares(brd,COMPUTER_MARKER).first || at_risk_squares(brd,PLAYER_MARKER).first)
  square = 5 if empty_squares(brd).include?(5) && !square
  square = empty_squares(brd).sample if !square
  brd[square] = COMPUTER_MARKER
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_COMBINATIONS.each do |line_arr|
    # return 'Player' if brd.values_at(*line_arr).count(PLAYER_MARKER) == 3
    return 'Player' if line_arr.all? { |pos| brd[pos] == 'X' }
    # return 'Computer' if brd.values_at(line_arr[0], line_arr[1], line_arr[2]).count(COMPUTER_MARKER) == 3
    return 'Computer' if line_arr.all? { |pos| brd[pos] == 'O' }
  end
  
  nil
  # hash.valus_at: brd.values_at(1, 2, 3) == ['X', 'X', 'O']
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def add_score(winner, scoreboard)
  # winner = detect_winner(board)
  scoreboard[winner] += 1
end

def alternate_player(current_player)
  return 'Computer' if current_player == 'Player'
  return 'Player' if current_player == 'Computer'
end

scoreboard = initialize_scoreboard
loop do
  board = initialize_board
  current_player = determine_turn_order
  loop do
    display_board(board)
    display_scoreboard(scoreboard)

    place_piece!(board, current_player)
    break if board_full?(board) || someone_won?(board)
    current_player = alternate_player(current_player)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    add_score(detect_winner(board), scoreboard)
  else
    prompt "It's a tie!"
  end

  # prompt "Play Again?(y or n)"
  # input = gets.chomp
  # break if input != 'y' #|| scoreboard.values.include?(2)
  break if scoreboard.values.include?(WIN_TOTAL)
end
  # break if scoreboard.values.any? == 5
prompt "Thanks for playing!"
