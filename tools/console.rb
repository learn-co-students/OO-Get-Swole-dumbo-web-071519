# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

g1 = Gym.new("Jimmy")
g2 = Gym.new("Str")
g3 = Gym.new("Arr")
g4 = Gym.new("BroDudePalace")

l1 = Lifter.new("foo", 45)
l2 = Lifter.new("bar", 65)
l3 = Lifter.new("baz", 25)
l4 = Lifter.new("but", 100)
l5 = Lifter.new("tub", 75)

m1 = Membership.new(20, g1, l1)
m2 = Membership.new(40, g2, l1)
m3 = Membership.new(60, g3, l1)
m4 = Membership.new(20, g1, l2)
m5 = Membership.new(40, g2, l3)
m6 = Membership.new(60, g3, l4)


binding.pry

puts "Gains!"
