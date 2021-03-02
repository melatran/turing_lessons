numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#get sum of numbers
#start at 0 since you are adding, anything else won't let you add to it
#accumulator is our base
# += increment same as sum + num
sum = 0

numbers.each do |num|
  sum += num
  #sum = sum + num
end

p sum
