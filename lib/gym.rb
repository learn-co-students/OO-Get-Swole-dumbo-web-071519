class Gym
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self 
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def lifters
    self.memberships.map{|membership| membership.lifter}
  end

  def lifters_names
    self.lifters.map{|lifter| lifter.name}
    
  end

  def combined_lift_total
    self.lifters.reduce(0) do |total, lifter|
      total += lifter.lift_total
      total
    end
  end

end
