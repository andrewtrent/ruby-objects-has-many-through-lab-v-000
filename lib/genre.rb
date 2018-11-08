class Genre
  attr_accessor :name

  @@all = []

  def initialize(genre_name)
    @name = genre_name
    @@all << self
  end

  def self.create(genre_name)
    if self.exists?(genre_name)
      self.find_genre
    else
      Genre.new(genre_name)
    end
  end

  def self.find_genre(genre_name)
    Genre.all.detect {|genre| genre.name == genre_name}
  end

  def self.exists?(genre_name)
    if self.find_genre(genre_name).nil?
      false
    else
      true
    end
  end

  def self.all
    @@all.uniq
  end

  def songs
    Song.map {|song| song.genre == self}
  end

  def artists
    (Song.map {|song| song.artist if song.genre == self}).uniq
  end

end
