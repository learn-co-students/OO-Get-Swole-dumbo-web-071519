# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
rose = Lifter.new("Rose", 1200)
alex = Lifter.new("Alex", 1000)
amber = Lifter.new("Amber", 1150)
clarke = Lifter.new("Clarke", 1100)
xia = Lifter.new("Xia", 1200)

soul = Gym.new("Soul Stone Gym")
tension = Gym.new("High Tension Gym")

ms1 = Membership.new(15, rose, soul)
ms2 = Membership.new(25, rose, tension)
ms3 = Membership.new(25, alex, tension)
ms4 = Membership.new(15, amber, soul)
ms5 = Membership.new(20, clarke, soul)
ms6 = Membership.new(25, xia, tension)


binding.pry

puts "Gains!"
