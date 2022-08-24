class Song
    # attr_accessor :artist
    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = {}
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
    end
    def name
        @name
    end
    def artist
        @artist
    end
    def genre
        @genre
    end
    def self.artists
        @@artists.uniq {|art| art}
    end
    def self.genres
        @@genres.uniq {|gen| gen}
    end
    def self.count
        @@count
    end

    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
end