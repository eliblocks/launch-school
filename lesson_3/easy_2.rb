# Question 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.include?("Spot")
ages.has_key?("Spot")
ages.key?("Spot")

# Question 2 
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.reduce(:+)

# Question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select! { |k, v| v < 100 }

# Question 4

munsters_description = "The Munsters are creepy in a good way."

munsters_description.capitalize!
munsters_description.swapcase!
puts munsters_description
munsters_description.downcase!
munsters_description.upcase!

#Question 5

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
ages["Marilyn"] = 22
ages["Spot"] = 237

# Question 6
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.min

# Question 7

advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("dino")

# Question 8

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index { |name| name[0, 2] == "Be" }

# Question 9

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |name| name[0, 3] }

# Question 10

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |name| name[0, 3] }



