numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers 

#=> 1
#   2
#   2
#   3

#Question 2
  #the bang means not. also, the bang and q mark are common last caracters of a method
  #the bang often signals dangerous mathods, and the q mark indicate the mothed returns a boolean
  
  #1 not equals
  #2 causes the the return value to be a boolean, and will reverse the boolean of the method
  #3 will mutate the caller on methods that otherwise don't
  #4 ternary operator
  #5 ternary operator
  #6 !! is used to transform a non-nill return value to a true boolean

# Question 3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!("important", "urgent")
puts advice

# Question 4

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) #deletes index one which is number 2
numbers.delete(1) #deletes 1 from array

# Question 5

puts (1..100).include?(42)

# Question 6

famous_words = "seven years ago..."
famous_words.prepend("Four score and ")

famous_words = "seven years ago..."
famous_words = "Four score and #{famous_words}"

#7
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

#8

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

#9

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.select! { |k, v| k == "Barney" }
flintstones =  flintstones.to_a.flatten!

#10

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flint_hash = {}
flintstones.each_with_index { |name, index| flint_hash[name] = index } 
p flint_hash