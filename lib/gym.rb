class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all
  end

  def our_memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def our_lifters
    our_memberships.map do |membership|
      membership.lifter 
    end
  end

  def our_lifter_names
    our_lifters.map do |lifter|
      lifter.name
    end
  end

  def our_lift_total
    weights = our_lifters.map do |lifter|
      lifter.lift_total 
    end.sum
  end

end
