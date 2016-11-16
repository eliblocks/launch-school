family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate = family.select { |k,v| k == :brothers || k == :sisters }

extended = {  uncles: ["bob", "joe", "steve"],
            aunts: ["mary","sally","susan"]
            }
            
#puts immediate.merge!(extended)
#puts immediate.merge(extended)


words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          

def anagram(arr)         
  result = {}
  
  arr.each do |word|
    key = word.split('').sort.join
    if result.has_key?(key)
      result[key].push(word)
    else
      result[key] = [word]
    end
    print result
  end
end

anagram(words)
  
    
