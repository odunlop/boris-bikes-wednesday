require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'There are no bikes avaliable' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'The docking station is full' if full? == true
    @bikes << bike
  end

  private

  def full?
  @bikes.count >= 20 ? true : false
  end
end