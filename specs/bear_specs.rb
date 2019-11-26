require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')


class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
end

def test_can_get_bear_name
  assert_equal("Yogi", @bear.name)
end


end
