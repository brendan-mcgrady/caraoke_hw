class Room

  attr_reader :name

  def initialize(name, max_cap, entry_fee)
    @name = name
    @max_cap = max_cap
    @entry_fee = entry_fee
    @guests = []
    @playlist = []
  end

  def add_guest_to_room(guest, entry_fee)
    if guest.money() >= entry_fee
      @guests.push(guest)
    else
    end
  end

end
