class Room

  attr_reader :name, :max_cap, :entry_fee

  def initialize(name, max_cap, entry_fee)
    @name = name
    @max_cap = max_cap
    @entry_fee = entry_fee
    @guests = []
    @playlist = []
  end

  def add_song_to_playlist(song)
    @playlist << song
  end

  def playlist_song_count()
    return @playlist.count()
  end

end
