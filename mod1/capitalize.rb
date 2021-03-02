names = ['megan', 'tim', 'aurora']

capitalize_names = [] #accumulator

names.each do |name|
  capitalize_names << name.capitalize
end

p capitalize_names

# when using each to transform an array, we need some placeholder for those new values
# each doesn't change the array but allows us to do something with every element in the array
