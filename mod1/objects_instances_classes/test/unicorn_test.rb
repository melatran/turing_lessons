require 'minitest/autorun'
require 'minitest/pride'
require './lib/unicorn.rb'
require './lib/power.rb'

class UnicornTest < Minitest::Test
  def test_it_exists
    unicorn = Unicorn.new("Sparkle")
    assert_instance_of Unicorn, unicorn
  end

  def test_it_has_attributes
    unicorn = Unicorn.new("Sparkle")

    assert_equal "Sparkle", unicorn.name
    assert_equal "rainbow", unicorn.color
    assert_equal [], unicorn.magical_powers
  end

  def test_it_can_learn_magical_powers
    unicorn = Unicorn.new("Sparkle")

    assert_equal [], unicorn.magical_powers
    power = Power.new("fly")
    unicorn.learn_magical_power(power)

    power2 = Power.new("fart rainbow")
    unicorn.learn_magical_power(power2)
    assert_equal [power, power2], unicorn.magical_powers
  end

  def test_it_can_shout_magical_powers
    unicorn = Unicorn.new("Sparkle")

    power = Power.new("fly")
    power2 = Power.new("poop rainbow")

    unicorn.learn_magical_power(power)
    unicorn.learn_magical_power(power2)

    unicorn.shout_magical_powers
    assert_equal ['FLY', 'POOP RAINBOW'] , unicorn.shout_magical_powers
  end
end
