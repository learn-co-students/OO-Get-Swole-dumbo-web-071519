class Lifter
=begin
**Lifter**

  - Get a list of all lifters

  - Get a list of all the memberships that a specific lifter has

  - Get a list of all the gyms that a specific lifter has memberships to

  - Get the average lift total of all lifters

  - Get the total cost of a specific lifter's gym memberships

  - Given a gym and a membership cost, sign a specific lifter up for a new gym

=end
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    self.memberships.map do |membership|
      membership.gym
    end.uniq
  end

  def lift_totals 
    self.all.map do |lifter|
      lifter.lift_total
    end
  end

  def average_lift_total
    self.lift_totals.sum / self.all.count
  end

  def total_membership_cost
    self.memberships.map do |membership|
      membership.cost
    end.sum
  end

  def add_membership(gym, cost)
    Membership.new(cost, gym, self)
  end

  def self.all
    @@all
  end
end
