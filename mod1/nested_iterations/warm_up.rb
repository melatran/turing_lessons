animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]
strings = []
animals.each do |animal|
  strings << animal.to_s
end
p strings

length = []
animals.each do |animal|
  if animal.length >= 4
    length << animal
  end
end
p length

hash = Hash[animals.collect { |animal| [animal, animal.length] } ]
p hash