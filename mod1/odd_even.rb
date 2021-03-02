puts "enter text"
text = gets.chomp

#use while before the if statement to continously run
#.odd? and .even? are qualifier methods
while text != 'q'
  if text.length.odd?
    puts 'ODD!'
  else
  puts "EVEN!"
  end
  puts "Enter a word"
  text = gets.chomp
end
