class Lifter
  @@all = []

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    self.memberships.map{|membership| membership.gym}.uniq
  end

  def self.avg_total_lifts
    self.all.reduce(0){|total, lifter| total += lifter.lift_total}.to_f / self.all.count
  end

  def cost_of_membership
    self.memberships.reduce(0){|total, membership| total += membership.cost}
  end

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end

end
