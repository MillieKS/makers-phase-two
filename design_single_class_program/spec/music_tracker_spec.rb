require "music_tracker"

RSpec.describe MusicTracker do
  context "testing a program to store songs that have been listened to" do
    it "def list: create an array to store the songs" do
      song_list = MusicTracker.new
      expect(song_list.list).to eq [] # => []
    end

    it "def add and list: add songs to the list" do
      song_list = MusicTracker.new
      song_list.add("Firestone - Kygo")
      expect(song_list.list).to eq ["Firestone - Kygo"]
    end

    it "def add and list add more than one songe to the list" do
      song_list = MusicTracker.new
      song_list.add("Firestone - Kygo")
      song_list.add("Angel eyes - ABBA")
      expect(song_list.list).to eq ["Firestone - Kygo", "Angel eyes - ABBA"]
    end

    it "def add and list: add songs to the list" do
      song_list = MusicTracker.new
      song_list.add("Firestone - Kygo")
      song_list.add("")
      song_list.add("Angel eyes - ABBA")
      expect(song_list.list).to eq ["Firestone - Kygo", "", "Angel eyes - ABBA"]
    end
  end
end


