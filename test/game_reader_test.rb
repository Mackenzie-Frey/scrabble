require_relative '../lib/game_reader'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'

require 'pry'

class GameReaderTest < Minitest::Test
  def test_it_exists
    game_reader = GameReader.new
    assert_instance_of GameReaderTest, game_reader
  end

  def test_it_can_score_letter_multipliers
skip
    game_reader = GameReader.new
    assert_equal 9, game.score_with_multipliers('hello', [1,2,1,1,1])
  end

  def test_it_can_score_word_multipliers
  skip
    game_reader = GameReader.new
    assert_equal 18, game.score_with_multipliers('hello', [1,2,1,1,1], 2)
  end

end

# > game.score_with_multipliers('hello', [1,2,1,1,1])
# => 9
# > game.score_with_multipliers('hello', [1,2,1,1,1], 2)
# => 18
