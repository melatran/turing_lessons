# Can you create a new array with each number doubled?
numbers = [1,2,3,4,5]
doubled = []
odd = []

numbers.each do |num|
  doubled << num * 2
end

p doubled

# Can you create a new array with only the odd numbers?
numbers.each do |num|
  if num.odd?
    odd << num
  end
end

p odd

odd_numbers = numbers.map do |num|
  if num.odd?
    num
  end
end

p odd_numbers.compact

odd3 = numbers.select do |num|
  num.odd?
end

# p odd3

# Can you return the first number that's greater than 3?
greater_than_three = []

numbers.each do |num|
  if num > 3
    greater_than_three << num
    break
  end
end

p greater_than_three

#find_all and select (all elements that meet given criteria)
new_numbers = numbers.find_all do |num|
  num > 3 && num < 5
end

p new_numbers

#find/detect
#the first element of the collection that meets the given criteria
#when you want to return one element

greater_than_3 = numbers.find do |num|
  num > 3
end

p greater_than_3

#each used when you dont care about return value
#map always returns new array; returns different data type
#(map only one that can reutnr array with elements not incollections)
#find all for subset of original collection
#find gives the first element that meets the criteria

# Can you print out _if_ any numbers are divisible by 2 or not?
# Can you find the sum of the numbers?
