arr = (1..10).to_a

#1

arr.each { |i| puts i }

#2 

arr.each { |i| puts i if i > 5 }

#3

arr.select { |i| i.even? }

#4

arr.unshift("0") 
arr << "11"

#5

arr.pop
arr << "3"

#6

arr.uniq!

#7

#array items are numbered, hashe items are named

#8 

student = { :name => "joe", :age => 22 }
student = { name: "joe", age: 22 }

#9

h = {a:1, b:2, c:3, d:4}

h[:b]
h[:e] = 5
h.delete_if { |k,v| v < 3.5 }

#10

#yes

description = [name: "joe", age: 22]
course = { students: ["joe", "mark"], books: ["book1", "book2"] }

#11

#http://api.rubyonrails.org/ => official rails docs
#http://ruby-doc.org/core-2.3.0/ => current ruby docs

#12

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnsonh"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#13

joe_email = contacts["Joe Smith"][:email]
sally_phone = contacts["Sally Johnson"][:phone]

#14

contact_data = ["Joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

#15

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?("s") }

#16

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a.map! {|i| i.split}
a.flatten!

#17

#These hashes are the same!

