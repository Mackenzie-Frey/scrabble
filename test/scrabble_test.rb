require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_exists
    game = Scrabble.new
    assert_instance_of Scrabble, game
  end

  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score__full_word
    game = Scrabble.new
    assert_equal 8, game.score("hello")
  end

  def test_it_can_score_empty_string
    game = Scrabble.new
    assert_equal 0, game.score("")
  end

  def test_it_can_score_nil
    game = Scrabble.new
    assert_equal 0, game.score(nil)
  end

  def test_it_can_score_letter_multipliers
    game = Scrabble.new
    assert_equal 9, game.score_with_multipliers('hello', [1,2,1,1,1])
  end

  def test_it_can_score_word_multipliers
skip
    game = Scrabble.new
    assert_equal 18, game.score_with_multipliers('hello', [1,2,1,1,1], 2)
  end

  def test_it_gets_10_bonus_points_if_greater_than_7_letters
skip
    game = Scrabble.new
    assert_equal 58, game.score_with_multipliers('sparkle', [1,2,1,3,1,2,1], 2)
  end

end

# > game.score_with_multipliers('sparkle', [1,2,1,3,1,2,1], 2)
# => 58
