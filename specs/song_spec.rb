require("minitest/autorun")
require("minitest/reporters")

require_relative("../song")

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class SongTest < MiniTest::Test

  def test_can_create_song__has_name
    actual = Song.new("HUMBLE.", "Kendrick Lamar")
    assert_equal("HUMBLE.", actual.name)
  end

end
