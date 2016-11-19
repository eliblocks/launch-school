def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number != 0
end

x = ''
y = ''
mode = ''


  
def calculate(x,y,mode)
  mode = mode.chomp
  if mode == 'divide'
    x = x.chomp.to_f
    y = y.chomp.to_f
  else
    x = x.chomp.to_i
    y = y.chomp.to_i
  end
  
  case mode
  when "add"
    x + y
  when "subtract"
    x - y
  when "multiply"
    x * y
  when "divide"
    x / y
  end
end

prompt("Welcome to the calculator! What is your name?")
name = gets.chomp
puts "Hello, #{name}"
#main loop
loop do  
  loop do
    prompt("Enter a number")
    x = gets
    break if valid_number?(x)
  end
  loop do
    prompt("Enter another number")
    y = gets
    break if valid_number?(y)
  end
  loop do 
    mode_prompt = <<-HEREDOC
      What operation?
      1) Add
      2) Subtract
      3) Multiply
      4) Divivde
    HEREDOC
    prompt(mode_prompt)
    mode = gets
    break if mode
  end

  answer = calculate(x,y,mode)
  puts "result: #{answer}"
  puts "Would you like to make another calculation? (Y/N)"
  res = gets.chomp
  break unless res.downcase.start_with?("y")
end

puts "Goodbye!, #{name}"