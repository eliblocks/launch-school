# Question 1 

if false
  greeting = “hello world”
end

#Question 2

greeting
# greeting == nil

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # => { a: 'hi there' }

# Question 3

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => "one"
puts "two is: #{two}" # => "two"
puts "three is: #{three}" # => "three"


def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => "one"
puts "two is: #{two}" # => "two"
puts "three is: #{three}" # => "three"


def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => "two"
puts "two is: #{two}" # => "three"
puts "three is: #{three}" # => "one"

# Question 4

def uuid
  hex_chars = (1..9).to_a + ('a'..'f').to_a
  u = []
  pattern = [8, 4, 4, 12]
  pattern.each do |i|
    i.times { u << hex_chars.sample }
    u << '-'
  end    
  u.join
end

print uuid

# Question 5

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end




