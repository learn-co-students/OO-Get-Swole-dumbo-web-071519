require_relative "lifter.rb"
require_relative "membership.rb"
require_relative "gym.rb"
require 'pry'


l1 = Lifter.new("Magnus", 125)
l2 = Lifter.new("Torstein", 21)
l3 = Lifter.new("Hvald", 45)

g1 = Gym.new("Golds")
g2 = Gym.new("Richies")
g3 = Gym.new("Prison")

m1 = Membership.new(l1, 5, g1)
m2 = Membership.new(l2, 10, g2)
m3 = Membership.new(l3, 7, g3)
m4 = Membership.new(l1, 10, g2)
m5 = Membership.new(l3, 3, g1)

binding.pry
print "fin"
