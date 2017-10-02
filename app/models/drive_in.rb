class DriveIn
  attr_reader :name

  def initialize
    @name = "Happy's Sunset Drive-In"
  end

  def screens
    MovieScreen.all_screens
  end

  def cars
    Car.all
  end

  def full_house?
    MovieScreen.all_screens.all? { |ms|ms.at_capacity? }
  end

  def whats_playing
    MovieScreen.all_screens.map{ |ms|ms.movie }
  end
end
