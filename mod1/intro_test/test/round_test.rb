require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/round'

class RoundTest < Minitest::Test
  def setup
    @geography_card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @history_card = Card.new("Who was the youngest president in U.S. history?", "T. Roosevelt", :History)
    @unicorn_card = Card.new("What is the national animal of Scotland?", "unicorn", :Geography)
    @deck = Deck.new([@geography_card, @history_card, @unicorn_card])
    @round = Round.new(@deck)
  end
  def test_it_exists
    assert_instance_of Round, @round
  end
  def test_it_has_attributes
    assert_equal @deck, @round.deck
    assert_equal [], @round.turns
    assert_equal 0, @round.number_correct
  end
  def test_it_can_get_current_card
    assert_equal @geography_card, @round.current_card
    @round.take_turn('Juneau')
    assert_equal @history_card, @round.current_card
  end
  def test_take_turn
    turn = @round.take_turn('Juneau')
    assert_instance_of Turn, turn
    assert_equal 1, @round.number_correct
    assert_equal @history_card, @round.current_card
    assert_equal [turn], @round.turns
    turn2 = @round.take_turn("whatever")
    assert_instance_of Turn, turn
    assert_equal 1, @round.number_correct
    assert_equal @unicorn_card, @round.current_card
    assert_equal [turn, turn2], @round.turns
  end
end
