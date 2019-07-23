class Membership
@@all =[]

  attr_reader :cost, :lifter, :gym

  def initialize(lifter, cost, gym)
    @lifter = lifter
    @cost = cost
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end


end
