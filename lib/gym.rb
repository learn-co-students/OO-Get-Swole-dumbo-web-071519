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

  def membership_list
    Membership.all.select{|memberships| memberships.gym == self}
  end

  def lifters
    self.membership_list.map{|member| member.lifter}
  end


  def lifter_names
    self.lifters.map{|member| member.name}
  end

  def lift_total
    self.lifters.reduce(0) do |total, lifter| 
      total += lifter.lift_total
      total
    end
  end


end
