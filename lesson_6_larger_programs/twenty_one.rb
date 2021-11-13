require 'pry'

OBJECTIVE_TOTAL = 21
DEALER_MIN_HIT = OBJECTIVE_TOTAL - 4


def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  deck = {}
  suits = %w(hearts diamonds clubs spades)
  values = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  suits.each do |suit|
    deck[suit] = values.clone
  end
  deck
end

def initialize_round(deck, player, dealer)
  player[:hand] = deal_starting_hand!(deck)
  player[:value] = hand_value(player)
  dealer[:hand] = deal_starting_hand!(deck)
  dealer[:value] = hand_value(dealer)
end

def deal_starting_hand!(deck)
  hand = []
  2.times do
    hand << deal_card!(deck)
  end
  hand
end

def deal_card!(deck)
  suit = deck.keys.sample
  value = deck[suit].sample
  deck[suit].delete(value)
  [value, suit]
  # deck.to_a.sample(1).to_h
end

def hand_value(player)
  values = player[:hand].map { |card| card[0] }
  total = 0
  values.each do |value|
    total += if value == 'A'
               11
             elsif value.to_i == 0
               10
             else
               value.to_i
             end
  end
  values.select { |value| value == 'A' }.count.times do
    total -= 10 if total > OBJECTIVE_TOTAL
  end
  total
end

def hit!(player, deck)
  player[:hand] << deal_card!(deck)
  player[:value] = hand_value(player)
end

def bust?(player)
  player[:value] > OBJECTIVE_TOTAL
end

def convert_ace(player)
  player[:value] -= 10
end

def display_game(player, dealer, start_or_end = "start")
  system 'clear'
  prompt "Dealer showing: #{start_or_end == 'start' ? dealer[:hand].first : dealer[:value].to_s + ' ' + dealer[:hand].to_s}"
  prompt ''
  prompt "You have: #{player[:value]} #{player[:hand]}"
end

def hit_or_stay
  prompt "Hit(h) or Stay(s)?"
  input = gets.chomp
  until %w(h s).include?(input)
    prompt "That isn't a valid option"
    input = gets.chomp
  end
  input
end

def determine_results(player_total, dealer_total)
  if player_total > OBJECTIVE_TOTAL
    :busted
  elsif dealer_total > OBJECTIVE_TOTAL
    :dealer_busted
  elsif player_total > dealer_total
    :player_won
  else
    :dealer_won
  end
end

def display_results(player, dealer)
  result = determine_results(player[:value], dealer[:value])
  case result
  when :busted
    prompt "You Busted! Dealer Won."
    dealer[:score] += 1
  when :dealer_busted
    prompt "Dealer Busted! You Won!"
    player[:score] += 1
  when :player_won
    prompt "You Won!"
    player[:score] += 1
  when :dealer_won
    prompt "Dealer Won!"
    dealer[:score] += 1
  end
  show_score(player[:score], dealer[:score])
end

def show_score(player_score, dealer_score)
  prompt "Player Score: #{player_score}"
  prompt "Dealer Score: #{dealer_score}"
end

def match_over?(player, dealer)
  if player[:score] >= 5
    prompt "Player wins the Match!"
    return true
  elsif dealer[:score] >= 5
    prompt "Dealer wins the Match!"
    return true
  end
  return false
end

def play_again?
  puts "------------"
  prompt "Do you want to play again? (y/n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

########---Gameflow---########
player = {}
dealer = {}
loop do
  deck = initialize_deck
  if player.empty?
    player = {score: 0}
    dealer = {score: 0}
  else
    player = {score: player[:score]}
    dealer = {score: dealer[:score]}
  end
  initialize_round(deck, player, dealer)

  # player turn loop
  display_game(player, dealer)
  player_choice = ''
  loop do
    player_choice = hit_or_stay
    player_choice == 'h' ? hit!(player, deck) : break

    display_game(player, dealer)
    break if bust?(player)
  end

  if bust?(player)
    display_results(player, dealer)
    break if match_over?(player, dealer)
    play_again? ? next : break
  end

  until dealer[:value] >= DEALER_MIN_HIT
    hit!(dealer, deck)
  end
  display_game(player, dealer, "end")
  display_results(player, dealer)
  break if match_over?(player, dealer)
  play_again? ? next : break
end
prompt "Thanks for Playing!"
