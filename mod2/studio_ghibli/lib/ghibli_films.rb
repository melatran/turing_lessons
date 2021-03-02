require 'faraday'
require 'json'
require 'pry'
require_relative 'film'

# response = Faraday.get("https://ghibliapi.herokuapp.com/films")
# parsed = JSON.parse(response.body, symbolize_names: true)
#parsed = array of hashes

# films = parsed.map do |data|
#   Film.new(data)
# end

film_search = FilmSearch.new

film_search.film_information.each do |film|
  puts film.title
  puts "Directed By: #{film.director}"
  puts "Produced By: #{film.producer}"
  puts "Rotten Tomatoes Score: #{film.rotten_tomatoes}"
  puts ""
end


class FilmSearch
  #this class will return search results
  def film_information
    # response = Faraday.get("https://ghibliapi.herokuapp.com/films")
    # parsed = JSON.parse(response.body, symbolize_names: true)
    #
    # films = parsed.map do |data|
    #   Film.new(data)
    # end
    # service = GhibliService.new
    service.films.map do |data|
      Film.new(data)
    end
  end

  def service
    #service will talk to the API
    GhibliService.new
  end

  # def locations_info
  #   service.locations.map do |data|
  #     Location.new(data)
  #   end
  # end
end

#code doesnt run unless it gets called
#every time we call it, it hits the API


class GhibliService
  #filmsearch will reach into film informatin and then hit service which leads to GhibliService to give us our information
  #reach different end points of the API but it's repetitive
  def films
    # get_url("https://ghibliapi.herokuapp.com/films")
    get_url("films")
    # response = Faraday.get("https://ghibliapi.herokuapp.com/films")
    # JSON.parse(response.body, symbolize_names: true)
  end


  def people
    # response = Faraday.get("https://ghibliapi.herokuapp.com/people")
    # JSON.parse(response.body, symbolize_names: true)
    # get_url("https://ghibliapi.herokuapp.com/people")
    get_url("people")
  end

  def locations
    # response = Faraday.get("https://ghibliapi.herokuapp.com/locations")
    # JSON.parse(response.body, symbolize_names: true)
    # get_url("https://ghibliapi.herokuapp.com/locations")
    get_url("locations")
  end

  def get_url(url)
    # response = Faraday.get(url)
    response = Faraday.get("https://ghibliapi.herokuapp.com/#{url}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
