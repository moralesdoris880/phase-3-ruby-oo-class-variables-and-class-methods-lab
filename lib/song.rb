class Song
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre
    @@count=0
    @@artists=[]
    @@genres=[]
    def initialize(name,artist,genre)
        @@count+=1
        @name=name
        @artist=artist
        @genre=genre
        @@artists << artist
        @@genres << genre
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
    def self.genre_count
        i= 0
        genres_hash = {}
        new_genres= @@genres.uniq
        while i < new_genres.length
            genres_hash["#{new_genres[i]}"]=@@genres.count("#{new_genres[i]}")
            i+=1
        end
        genres_hash
    end
    def self.artist_count
        i= 0
        artists_hash = {}
        new_artists= @@artists.uniq
        while i < new_artists.length
            artists_hash["#{new_artists[i]}"]=@@artists.count("#{new_artists[i]}")
            i+=1
        end
        artists_hash
    end


end