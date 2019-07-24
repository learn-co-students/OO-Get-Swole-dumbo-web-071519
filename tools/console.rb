# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

ada = Lifter.new("Ada", 250)
michael = Lifter.new("Michael", 225)

golds = Gym.new("Golds")
nysc = Gym.new("NYSC")
pf = Gym.new("PF")

m1 = Membership.new(ada, golds, 60)
m2 = Membership.new(ada, nysc, 80)
m3 = Membership.new(michael, pf, 15)
m4 = Membership.new(michael, golds, 50)

binding.pry

puts "Gains!"
