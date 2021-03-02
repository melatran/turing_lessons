#standard syntax
collection.each do |block_variable|
  #code here runs for each element
  #the current element's value is stored in block's carirable variable
end

#single line syntax
collection.each {|block variable| puts block_variable_code}

#block - from do to end
#block variable represents each thing from the collection as we iterate
#over that collection
#return value of each is the original array

characters = ["Khaleesi", "Varys", "Little Finger"]
#in the pipes, usually the singular version of collection
characters.each do |character|
  puts character
end

singers = ["billie", "ariana", "lizzo", "leon"]

capitalized_singer = []
caps_singer = []
reverse_singer = []
four_length_names = []
name_length = []

singers.each do |singer|
  capitalized_singer << singer.capitalize
  caps_singer << singer.upcase
  reverse_singer << singer.reverse
  if singer.length > 4
    four_length_names << singer
  end
  name_length << singer.length
end

p capitalized_singer
p caps_singer
p reverse_singer
p four_length_names
p name_length