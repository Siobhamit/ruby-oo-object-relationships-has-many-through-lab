class Genre

    attr_accessor :song, :artist
    attr_reader :name

@@genres = []

    def initialize(name)
        @name = name
        @@genres << self
    end

    def songs
        Song.all.select{|song| song.genre == self}
    end

    def self.all
        @@genres
    end

    def artists
       self.songs.map{|song| song.artist}
    end


end