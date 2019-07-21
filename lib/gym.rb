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
    Membership.all.select{|mem| mem.gym == self}
  end

  def lifters
    self.memberships.map{|mem| mem.lifter}
  end

  def lifter_names
    self.lifters.map{|lifter| lifter.name}
  end

  def lift_total
   lift_total_arr =  self.lifters.map{|lifter| lifter.lift_total}
   lift_total_arr.inject(0){|sum, i| sum + i}
  end
end
