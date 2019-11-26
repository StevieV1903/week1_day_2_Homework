require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bears')
require_relative('../river')


class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")

end

def test_can_get_bear_name
  assert_equal("Yogi", @bear.name)
end

def test_can_get_bear_type
  assert_equal("Grizzly", @bear.type)
end

def test_does_bear_have_empty_stomach
  assert_equal(0, @bear.fish_amount)
end

def test_can_bear_take_fish_from_river
    @bear.pick_up_fish()
    assert_equal(1, @bear.fish_amount)
  end


end
