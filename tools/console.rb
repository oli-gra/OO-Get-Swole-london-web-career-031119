# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

biff = Lifter.new("Biff","300")
james = Lifter.new("James","180")
sarah = Lifter.new("Sarah","220")

pure = Gym.new("Pure Gym")
virgin = Gym.new("Virgin Active")

biff.new_membership(pure)
james.new_membership(virgin)
sarah.new_membership(virgin)
sarah.new_membership(pure)


binding.pry

puts "Gains!"
