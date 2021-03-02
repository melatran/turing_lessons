require './lib/unicorn.rb'
require './lib/power'
unicorn1 = Unicorn.new("Sparkles")
unicorn2 = Unicorn.new("Sprinkles", "white")

power = Power.new('fly')
power2 = Power.new('poop rainbows')

unicorn1.learn_magical_power(power)
unicorn1.learn_magical_power(power2)

require "pry"; binding.pry
