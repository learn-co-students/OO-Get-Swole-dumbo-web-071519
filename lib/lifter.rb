require 'pry'

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

  def memberships
    Membership.all.select{|member| member.lifters == self}
  end

  def self.avg_total_lift
    lift_arr = self.all.map{|athlete| athlete.lift_total}
  end


  def gym_budget
    self.memberships.inject{|total, member| total += member.cost}
  end

  def sign_up(cost, gym)
    Membership.new(self, cost, gym)
  end

end
