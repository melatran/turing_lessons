class Unicorn
  attr_reader :name, :color, :magical_powers
  attr_accessor :name

  def initialize(name, color = "rainbow")
    @name = name
    @color = color
    @magical_powers = []
  end

  def learn_magical_power(power_name)
    @magical_powers << power_name
  end

  def shout_magical_powers
    shouted_powers = []
    @magical_powers.each do |power|
      shouted_powers << power.name.upcase
    end
    shouted_powers
  end
end
