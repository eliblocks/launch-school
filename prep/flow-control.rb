
def all_caps(string)
  string.upcase if string.length > 10
end

def estimate(num)
  exit if num < 0 
  if num < 51
    "between 0 and 50"
  elsif num < 100
    "between 51 and 100"
  else 
    "above 100"   
  end
end


#1. 

'4' == 4 ? puts("TRUE") : puts("FALSE")

#will print "FALSE"

#2. 

  x = 2
   if ((x * 3) / 2) == (4 + 4 - x - 3)
     puts "Did you get it right?"
   else
     puts "Did you?"
   end

#will print "Did you get it right?

#3. 

  y = 9
  x = 10
  if (x + 1) <= (y)
   puts "Alright."
  elsif (x + 1) >= (y)
   puts "Alright now!"
  elsif (y + 1) == x
   puts "ALRIGHT NOW!"
  else
   puts "Alrighty!"
  end
  
#will print "Alright now!"
  
def case_estimate(num)
  #exit if num < 0 
  case num
  when num < 51 
    puts "between 0 and 50"
  when num < 100 
    puts "between 51 and 100" 
  else 
    puts "above 100"   
  end
end

