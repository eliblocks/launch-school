def hello
  loop do
    puts "What is your name?"
    break if gets.chomp == "STOP"
  end
end

arr = ["dog", "cat", "mouse"]
arr.each_with_index do |value, index|
  puts "#{value} #{index}"
end

def countdown(num)
  puts num -= 1
  countdown(num) if num > 0
end

  

