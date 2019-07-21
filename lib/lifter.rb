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
      Membership.all.select{|mem| mem.lifter == self}
  end
  
  def gyms
      self.memberships.map{|mem| mem.gym}.uniq
  end

  def self.average_lift
      lift_array = self.all.map{|lifter| lifter.lift_total}
      avg = (lift_array.inject(0){|sum, i| sum + i}).to_f/lift_array.count.to_f
  end

  def total_cost
      cost_array = self.memberships.map{|mem| mem.cost}
      total = cost_array.inject(0){|sum,i| sum + i}
  end

  def new_gym(gym, cost)
      Membership.new(cost, gym, self)
  end
end
