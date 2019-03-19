require 'pry'

class Membership
#SPT
  @@all = []
  @@gym_costs = {"Virgin Active"=>"480","Pure Gym"=>"320"}

  attr_reader :cost, :gym, :lifter

  def initialize(gym,lifter,cost=@@gym_costs[gym.name].to_i)
    @gym = gym
    @cost = cost
    @lifter = lifter
    @@all << self
  end

  def self.all
    @@all
  end
end
