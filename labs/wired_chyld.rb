require 'pry'
require 'active_support/all'

class Wire
  attr_accessor :points, :length #attr_accessor produces two functons
  def initialize
    @points = 10.times.map { Point.new } #.map produeces a new array. 10.times/create a new array - of Point.new. So it creates 
    #10 points and puts them into a new array.
  end
  def distance(p1, p2) #method that calculates the distance between two points
    Math.sqrt(((p1.x - p2.x)**2) + ((p1.y - p2.y)**2))
  end
  def length# if we have 5 points - our distance calc is going to be 4 lengths. thats why we subtract 1.
    #then .map creates a new array of : the dstance between points 1 and 2...goes through 4 times. because of .times
    #.inject sums the distances 
    (points.length - 1).times.map {|x| distance(points[x], points[x+1])}.inject(&:+)
  end
  def to_s
    "This wire is of length #{length}"
  end
end

class Point #this is how to generate new points. Point.new above
  attr_accessor :x, :y
  def initialize
    @x = Random.rand(1000)
    @y = Random.rand(1000)
  end
end

puts Wire.new