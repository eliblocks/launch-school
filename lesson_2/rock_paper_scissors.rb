require 'pry'

CHOICES = %w(rock paper scissors)

def prompt(msg)
  puts "=> #{msg}"
end

def result(player, computer)
  if player == 'rock' && computer == 'scissors' ||
     player == 'paper' && computer == 'rock' ||
     player == 'scissor' && computer == 'paper'
    'won'
  elsif player == computer
    'tied'
  else
    'lost'
  end
end

prompt('Welcome to rock-paper-scissors')

loop do
  player = ''

  loop do
    prompt("Choose one: #{CHOICES.join(', ')}")
    player = gets.chomp
    if CHOICES.include?(player)
      break
    else
      prompt("Not a valid choice")
    end
  end

  computer = CHOICES.sample

  result = result(player, computer)

  prompt "You chose: #{player}, computer chose: #{computer}"
  prompt "You #{result}"
  prompt 'Play again?'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Goodbye')
