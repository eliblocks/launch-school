require 'pry'

CHOICES = %w(rock paper scissors spock lizzard)
ABBR = %w(r pa sc sp l)

loss = {
  rock: %w(paper spock),
  paper: %w(lizard scissors),
  scissor: %w(spock rock),
  spock: %w(paper lizard),
  lizzard: %w(rock scissors)
}

def prompt(msg)
  puts "=> #{msg}"
end

def result(player, computer, loss)
  if player == 'rock' && loss[:rock].include?(computer) ||
     player == 'paper' && loss[:paper].include?(computer) ||
     player == 'scissor' && loss[:scissor].include?(computer) ||
     player == 'lizzard' && loss[:lizzard].include?(computer) ||
     player == 'spock' && loss[:spock].include?(computer)
    'won'
  elsif player == computer
    'tied'
  else
    'lost'
  end
end

def display_selection
  5.times do |i|
    print "#{CHOICES[i]} (#{ABBR[i]})  "
  end
  print "\n"
end

prompt('Welcome to rock-paper-scissors-spock-lizzard!')
pscore = 0
cscore = 0

while pscore < 5 && cscore < 5
  player = ''

  loop do
    prompt("Choose one: #{display_selection}")
    player = gets.chomp
    if ABBR.include?(player)
      player = CHOICES[ABBR.index(player)]
      break
    else
      prompt("Not a valid choice")
    end
  end

  computer = CHOICES.sample

  result = result(player, computer, loss)

  prompt "You chose: #{player}, computer chose: #{computer}"
  prompt "You #{result}"
  pscore += 1 if result == 'won'
  cscore += 1 if result == 'lost'
  prompt("You've won #{pscore}....computer has won #{cscore}")
end

prompt('Goodbye')
