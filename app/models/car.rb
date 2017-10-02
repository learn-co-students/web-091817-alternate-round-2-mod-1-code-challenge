class Car
  attr_accessor :movie_screen

  @@all = []

  def initialize(movie_screen)
    @movie_screen = movie_screen
    @@all << self
  end

  def self.all
    @@all
  end

end
