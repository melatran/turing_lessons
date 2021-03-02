class Film
  attr_reader :title,
              :description,
              :director,
              :producer,
              :release_date,
              :rotten_tomatoes

  def initialize(data)
  	@title = data[:title]
  	@description = data[:description]
  	@director = data[:director]
  	@producer = data[:producer]
  	@release_date = data[:release_date]
  	@rotten_tomatoes = data[:rt_score]
    #don't have to keep the rt_score, instance variable can be whatever you wnant it to be
  end

  #you can still create your own methods

  # def rotten_tomatoes
  #   @rotten_tomatoes.round(2)
  # end
end
