class Gym

  ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.memberships(gym)
    Membership.all.select{|m|m.gym == gym}
  end

  def self.lifters(gym)
    memberships(gym).map(&:lifter)
  end

  def num_lifters
    Membership.all.select{|m|m.gym == self}.map(&:lifter)
  end

  def lift_total
    lifters.lift_total.inject(:+)
  end

end
