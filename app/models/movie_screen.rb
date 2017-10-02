class MovieScreen
  attr_accessor :movie, :capacity

  @@all = []

  def initialize(movie, capacity)
    @movie = movie
    @capacity = capacity
    @@all << self
  end

  def cars
    Car.all.select{ |car|car.movie_screen == self }
  end

  def at_capacity?
    self.cars.count == self.capacity ? true : false
  end

  def add_car
    if !at_capacity?
      Car.new(self)
      "Enjoy!"
    else
      "Movie is sold out."
    end
  end

  def self.all_screens
    @@all
  end
end
