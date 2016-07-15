directions = ["north", "south", "east", "west"]

compass = {
  n: "north",
  s: "south",
  e: "east",
  w: "west",
}

#
class Direction
  attr_accessor :abbreviation, :direction_name

  def initialize(abbreviation, direction_name)
    @abbreviation = abbreviation
    @direction_name = direction_name
  end



end


d = Direction.new("n", "North")


class Compass
  attr_accessor :directions

  def initialize
    @directions = [Direction.new("n", "North"), Direction.new("s", "South"), Direction.new("e", "East"), Direction.new("w", "West")]
    # my_compass = @directions
  end


end


require 'sinatra'

get '/1_on_1' do
  "test... 😐"
end


get '/' do
  # abbrv = params['direction']
  dr = ""
  my_compass = Compass.new
  my_compass.directions.each do |dir|
    if d.abbreviation == params[:direction]
      dr = d.direction_name
    end
end
"The direction corresponding to #{params[:direction]} is #{dr}."
end

#

# d.direction_name
# c = Compass.new
#
