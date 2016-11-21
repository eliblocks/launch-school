require 'pry'

arr = [3,4,5]

def add_six(arr)
  i = 0
  arr.each do |num| 
    arr[i] += 6
    i += 1
  end
end

add_six(arr)

p arr