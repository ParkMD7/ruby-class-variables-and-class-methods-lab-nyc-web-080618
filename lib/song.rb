require 'pry'

class Song

attr_accessor :song, :artist, :genre

@@count = 0
@@artists = []
@@genres = []


  def initialize(song, artist, genre)
    @song = song
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
  end



  def name
    @song
  end

  def artist
    @artist
  end

  def genre
    @genre
  end
  #binding.pry



  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
    #binding.pry
  end

  def self.genres
    @@genres.uniq
  end


  def self.artist_count
    @@artists.uniq
    #binding.pry
  end

  def self.genre_count
    @@genres.uniq
  end


  def self.artist_count
    artist_count = {}

    @@artists.each do |artist_name|
      #binding.pry
      if artist_count[artist_name]
        artist_count[artist_name] += 1
      else
        artist_count[artist_name] = 1
      end
    end
    artist_count
  end
  #binding.pry



  def self.genre_count
    genre_count = {}

    @@genres.each do |genre_name|
      #binding.pry
      if genre_count[genre_name]
        genre_count[genre_name] += 1
      else
        genre_count[genre_name] = 1
      end
    end
    genre_count
  end


end
