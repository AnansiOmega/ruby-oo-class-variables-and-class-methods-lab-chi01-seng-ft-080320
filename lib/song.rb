require 'pry'
class Song
    attr_accessor 
    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@all = []

    def self.all
        @@all
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
        @@all << self
    end

    def self.genre_count
        genre = Song.all.map do |finder|
            finder.genre
            binding.pry
            0
        end
        genre_map = genre.each_with_object(Hash.new(0)) do |word,counts| #takes all of the restaurant names, puts them in a hash and iterates through
            counts[word] += 1 
        end

    end
end #end of class


x = Song.new("Lucifer", "Jay-Z", "rap" )
y = Song.new("99 Problems", "Jay-Z", "rap")
z = Song.new("hit me baby one more time", "Brittany Spears", "pop")
 
# binding.pry
# 0