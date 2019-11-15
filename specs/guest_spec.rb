require("minitest/autorun")
require("minitest/reporters")

require_relative("../guest")

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Brendan", 45)
  end

  def test_can_create_guest__has_name
    assert_equal("Brendan", @guest.name())
  end

  def test_can_create_guest__has_money
    assert_equal(45, @guest.money())
  end

end
