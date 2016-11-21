require 'pry'

#1 Question 1

line = "The Flintstones Rock!"
10.times { |i| puts("#{' ' * i}#{line}") }

# Question 2

statement = "The Flintstones Rock"
result = {}
statement.each_char do |char|
  unless result.key?(char) || char == ' ' 
    result[char] = statement.count(char) 
  end
end

# Question 3

#puts "the value of 40 + 2 is " + (40 + 2) 
#the result of the concated expression must me be a string, but it is an int.
puts "the value of 40 + 2 is #{40 + 2}"

# Qustion 4


numbers = [1, 2, 3, 4]
numbers.each do |number|
  puts number
  numbers.shift(1)
end
# prints 1 and 3 meaning the iteration operates on the shortened array

#will output 1 and 2 before the array is destroyed
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# Question 5
def factor(number)
  dividend = number
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
end

# Question 6

# limit must be included in the method parameters
limit = 15

def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

# Question 7

def titleize(string)
  str_arr = string.split.map { |word| word.capitalize }
  str_arr.join(' ')
end

# Question 8

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |munster, details|
  if munsters[munster]["age"] < 18
    munsters[munster]["age_group"] = "kid"
  elsif munsters[munster]["age"] < 65
    munsters[munster]["age_group"] = "adult"
  else 
    munsters[munster]["age_group"] = "senior"
  end
end

p munsters