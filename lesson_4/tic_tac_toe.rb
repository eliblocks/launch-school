require 'pry'

def display_board(board)
  print("--------------\n")
  print("#{board[0..2].join " "} \n")
  print("#{board[3..5].join " "} \n")
  print("#{board[6..8].join " "} \n")
  print("--------------\n")
end

def tie?(board)
  !board.include?('-')
end

COMBOS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def win?(player)
  COMBOS.each do |combo|
    if player.include?(combo[0]) &&
       player.include?(combo[1]) &&
       player.include?(combo[2])
       return true
    end
  end
  false
end

def player_move(pos, player, board)
  board[pos] = 'X'
  player << pos
end

def empty_indexes(board)
  empty = []
  (1..8).each { |i| empty << i if board[i] == '-' }
  empty
end

def computer_move(pos, computer, board)
  pos = empty_indexes(board).sample
  board[pos] = 'O'
  computer << pos
end

puts "Welcome to tic tac toe!"
puts "You will play X"
#intro loop
loop do
  player = []
  computer = []
  board = ['-','-','-','-','-','-','-','-', '-']
  empty_indexes = []
  #play loop
  while !tie?(board)
    puts "enter a number from 1-8 to move"
    display_board(board)
    pos = gets.chomp.to_i
    player_move(pos, player, board)
    if win?(player)
      puts "You won!"
      break
    end
    computer_move(pos, computer, board)
    if win?(computer)
      display_board(board)
      puts "You lost!"
      break
    end
  end
  puts "play again?"
  break unless gets.chomp.downcase.start_with?("y")
end