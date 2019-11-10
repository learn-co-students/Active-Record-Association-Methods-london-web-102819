class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  # return the number of songs in a genre
  def song_count
    self.songs.count
  end

   # return the number of artists associated with the genre
  def artist_count
   self.artists.count
  end

  def all_artist_names
    self.artists.map {|a| a.name}
  end
end
