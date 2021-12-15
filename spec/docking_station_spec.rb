require 'docking_station'

describe DockingStation do 
  it { is_expected.to respond_to :release_bike }

    describe '#release_bike' do 
      it 'does not release a bike when there are none avaliable' do
        expect { subject.release_bike }.to raise_error 'There are no bikes avaliable'
      end
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        # we dock a bike as we start with the assumption there are no bikes
        # so need to dock a bike before we do this test
        expect(subject.release_bike).to eq bike
      end
    end
   
    describe '#dock' do
      it 'raises an error when full' do
        my_bike = Bike.new
        20.times{ subject.dock Bike.new }
        expect { subject.dock(my_bike) }.to raise_error 'The docking station is full'
      end
      it 'docks something' do
        my_bike = Bike.new
        expect(subject.dock(my_bike).pop).to eq my_bike
      end
    end
  end

# As a member of the public,
# So that I am not confused and charged unnecessarily,
# I'd like docking stations not to release bikes when there are none available.
# if there are no bikes
# error message = 'There are no bikes'

#   it 'does not release a bike when there are none avaliable' do
#     expect { raise StandardError, "There are no bikes avaliable"}.to
# RAISE/FAIL ERROR
# describe "matching error message with string" do
#   it "matches the error message" do
#     expect { raise StandardError, 'this message exactly'}.
#       to raise_error('this message exactly')
#   end
# end

