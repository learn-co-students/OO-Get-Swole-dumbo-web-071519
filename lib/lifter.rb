class Lifter

  attr_reader :name, :lift_total

  @@all  = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    self.memberships.map {|membership| membership.gym}
  end

  def total_cost
    self.memberships.map {|membership| membership.cost}.sum
  end

  def self.average_lift_total
    self.all.map {|lifter| lifter.lift_total}.sum.to_f / self.all.size
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

end
