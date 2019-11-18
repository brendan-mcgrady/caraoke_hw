require("minitest/autorun")
require("minitest/reporters")

require_relative("../room")
require_relative("../guest")
require_relative("../song")

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class RoomTest < MiniTest::Test

  def setup
    @soul_room = Room.new("Soul Room", 10, 5)
    @country_room = Room.new("Country Room", 15, 5)
    @metal_room = Room.new("Metal Room", 20, 5)

    @rooms = [@soul_room, @country_room, @metal_room]

    @guest = Guest.new("Brendan", 15)

    @song1 = Song.new("HUMBLE.", "Kendrick Lamar")
    @song2 = Song.new("Fingerprints", "Hiatus Cayote")
    @song3 = Song.new("Marvin Gaye", "What's Going On?")
    @song4 = Song.new("Elephant", "Jason Isbell")
    @song5 = Song.new("Jolene", "Dolly Parton")
    @song6 = Song.new("Davidian", "Machine Head")
    @song7 = Song.new("The Game", "Disturbed")

    @all_songs = [@song1, @song2, @song3, @song4, @song5, @song6, @song7]
    @soul_songs = [@song1, @song2, @song3]
    @country_songs = [@song4, @song5]
    @metal_songs = [@song6, @song7]

    @soul_playlist = [@soul_songs]
    @country_playlist = [@country_songs]
    @metal_playlist = [@metal_songs]
  end

  def test_can_create_room__has_name
    assert_equal("Soul Room", @soul_room.name())
  end

  def test_can_add_song_to_playlist
    @soul_playlist.add_song_to_playlist(@song7)
    assert_equal(4, @soul_playlist.playlist_song_count())
  end

end
