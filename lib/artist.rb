class Artist
    attr_accessor :genres, :songs
    attr_reader :name, :genre, :song

    @@artists = []

    def initialize(name)
        @name = name
        @@artists << self
    end

def self.all
    @@artists
end

def new_song(name, genre)
  artist = self
  Song.new(name, artist, genre)
end

def songs
    Song.all.select {|song| song.artist == self}
end

def genres
  self.songs.map{|song| song.genre}
end


    
end