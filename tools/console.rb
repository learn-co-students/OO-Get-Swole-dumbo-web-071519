# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("1", 100)
lifter2 = Lifter.new("2", 200)
lifter3 = Lifter.new("3", 300)
lifter4 = Lifter.new("4", 400)

gym1 = Gym.new("1")
gym2 = Gym.new("2")
gym3 = Gym.new("3")
gym4 = Gym.new("4")

membership1 = Membership.new(lifter1, gym1, 1000)
membership2 = Membership.new(lifter1, gym2, 2000)
lifter1.sign_up(gym3, 400)
lifter2.sign_up(gym3, 800)


binding.pry

puts "Gains!"
