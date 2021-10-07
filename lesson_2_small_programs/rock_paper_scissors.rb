# VALID_CHOICES = ['rock', 'paper', 'scissors']
VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

# possibilities = {"rock" => {"rock" => "tie", "paper" => "lose", "scissors" => "win","lizard" => "win", "spock" => "lose"},
#                  "paper" => {"rock" => "win", "paper" => "tie", "scissors" => "lose","lizard" => "lose", "spock" => "win"},
#                  "scissors" => {"rock" => "lose", "paper" => "win", "scissors" => "tie","lizard" => "win", "spock" => "lose"},
#                  "lizard" => {"rock" => "lose", "paper" => "win", "scissors" => "lose","lizard" => "tie", "spock" => "win"},
#                  "spock" => {"rock" => "win", "paper" => "lose", "scissors" => "win","lizard" => "lose", "spock" => "tie"}
#                 }
WINNING_OPTIONS = {"rock" => ["scissors", "lizard"],
                   "paper" => ["rock", "spock"],
                   "scissors" => ["paper", "lizard"],
                   "lizard" => ["paper", "spock"],
                   "spock" => ["scissors", "rock"]
                  }

def win?(first, second)
  WINNING_OPTIONS[first].include?(second)
  # (first == 'rock' && second == 'scissors') ||
  #   (first == 'paper' && second == 'rock') ||
  #   (first == 'scissors' && second == 'paper')
end

# def result(first, second)
#   possibilities[first][second]
# end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("You lost")
  else
    prompt("You Tied")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing!")
