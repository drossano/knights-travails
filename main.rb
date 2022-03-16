# frozen_string_literal: true

require_relative './lib/knight'

knight = Knight.new
puts 'Enter your starting space in x,y format'
starting_space = gets.chomp.split(',').map(&:to_i)
puts 'Enter your destination space in x,y format'
destination_space = gets.chomp.split(',').map(&:to_i)
knight.move_knight(starting_space, destination_space)
