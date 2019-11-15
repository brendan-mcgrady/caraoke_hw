require("minitest/autorun")
require("minitest/reporters")

require_relative("../room")
require_relative("../guest")

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class RoomTest < MiniTest::Test

  def setup
    @soul_room = Room.new("Soul Room", 10, 5)
    @country_room = Room.new("Country Room", 15, 5)
    @metal_room = Room.new("Metal Room", 20, 5)

    @rooms = [@soul_room, @country_room, @metal_room]

    @guests = Guest.new("Brendan", 10)
  end

  def test_can_create_room__has_name
    assert_equal("Soul Room", @soul_room.name())
  end

  def test_guest_enters_room
    assert_equal(1, @guests[:money].count())
  end

end
