class MusicTracker
  def initialize
    @list = []
  end

  def list
    @list
  end

  def add(song)
    @list << song
  end
end
