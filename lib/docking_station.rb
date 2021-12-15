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
    fail 'The docking station is full' if @bikes.count >= 20
    @bikes << bike
  end
end