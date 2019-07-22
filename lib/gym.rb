class Gym

=begin
**Gym**

  - Get a list of all gyms

  - Get a list of all memberships at a specific gym

  - Get a list of all the lifters that have a membership to a specific gym

  - Get a list of the names of all lifters that have a membership to that gym

  - Get the combined lift total of every lifter has a membership to that gym

=end
  
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def find_memberships
    Memberships.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    self.memberships.map do |membership|
      membership.lifter
    end
  end

  def lifters_name
    self.lifters.map do |lifter|
      lifter.name
    end
  end

  def combined_lift_total
    self.lifters.map do |lifter|
      lifter.lift_total
    end.sum
  end

  def self.all
    @@all
  end
end
