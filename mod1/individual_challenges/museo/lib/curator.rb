class Curator
  attr_reader :photographs, :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      artist.id == id
    end
  end

  def photographs_by_artist
    @photographs.reduce({}) do |artist_by_photos, photo|
      artist = find_artist_by_id(photo.artist_id)
      if artist_by_photos[artist] == nil
        artist_by_photos[artist] = []
      end
      artist_by_photos[artist] << photo
      artist_by_photos
    end
  end

  def artists_with_multiple_photographs
    photographs_by_artist.reduce([]) do |artist_name, artist_photo|
      artist_name << artist_photo.first.name if artist_photo.last.length > 1
      artist_name
    end
  end

  def photographs_taken_by_artist_from(country)
    photographs_by_artist.flat_map do |artist, photos|
      photos if artist.country == country
    end.compact
  end
end
