class Lifter

  @@all = []

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total.to_i
    @@all << self
  end

  def self.memberships(lifter)
    Membership.all.select{|m|m.lifter == lifter}
  end

  def self_select
    Membership.all.select{|m|m.lifter == self}
  end

  def gyms
    self_select.map(&:gym)
  end

  def total_cost
    self_select.map(&:cost).inject(:+)
  end

  def average_lift_total
    Lifter.all.lift_total.inject(:+) / Lifter.all.count
  end

  def new_membership(gym)
    Membership.new(gym,self)
  end

  def self.all
    @@all
  end
end
