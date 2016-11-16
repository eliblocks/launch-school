arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "#{number} is indeed in the array."
end

arr = [["test", "hello", "world"],["example", "mem"]]

puts arr[1][0]

arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5) #returns 3
#puts arr.index[5] #return NoMethodError
arr[5] #return 8

string = "Welcome to America!"
a = string[6] # "e"
b = string[11] # "m"
c = string[19] 


def augmented_array(arr)
  arr.map { |i| i + 2 }
end

p arr
p augmented_array(arr)