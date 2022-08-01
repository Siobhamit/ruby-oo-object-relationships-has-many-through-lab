class Song 
    attr_accessor :artist, :genre
    attr_reader :name, :genre, :artist

    @@songs = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@songs << self
    end

    def self.all
        @@songs
    end

    def genre
        @genre
    end

    def artist
        @artist
    end

end