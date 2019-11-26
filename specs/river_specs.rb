require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../bears')
require_relative('../fish')


class RiverTest < Minitest::Test

  def setup

    @fish1 = ("Trout")
    @fish2 = ("Haddock")
    @fish3 = ("Salmon")

    @fish = [@fish1, @fish2, @fish3]
    @river = River.new("Amazon", @fish)
    @bear = Bear.new("Yogi", "Grizzly")

  end

  def test_get_river_name
assert_equal("Amazon", @river.name)
  end

  def test_check_amount_of_fish_in_river
    assert_equal(3, @river.fish_count)
  end

  def test_can_bear_take_fish_from_river
      @river.remove_fish(@fish1)
      @bear.eat_fish(@fish1)
      assert_equal(2, @river.fish_count())
      assert_equal(1, @bear.fish_amount())
    end




end
