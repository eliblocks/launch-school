def calculate(x,y,mode)
  if mode == "divide" 
    x = x.to_f
    y = y.to_f
  else
    x = x.to_i
    y = y.to_i
  end
  if mode == "add"
    x + y
  elsif mode == "subtract"
    x - y
  elsif mode == "multiply"
    x * y
  else 
    x / y
  end
end

puts "Enter a number"
x = gets.chomp
puts "Enter another number"
y = gets.chomp
puts "Enter a calculation mode (add, subtract, multiply, divide)"
mode = gets.chomp

answer = calculate(x,y,mode)
puts "result: #{answer}"