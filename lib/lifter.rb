class Lifter
  attr_reader :name, :lift_total
 
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def my_memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def my_gyms
    my_memberships.map do |membership|
      membership.gym
    end
  end

  def self.total_weight_lifted
    weights = Lifter.all.map do |lifter|
      lifter.lift_total
    end.sum
  end

  def self.lift_average
    total_weight_lifted.to_f / self.all.count
  end

  def my_gym_costs
    my_memberships.map do |membership|
      membership.cost 
    end.sum
  end

  def new_membership(gym, cost)
    Membership.new(self, gym, cost)
  end

end
