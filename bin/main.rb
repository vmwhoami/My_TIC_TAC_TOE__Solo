# !/usr/bin/env ruby

puts 'Welcome to my awsome TIC TAC TOE game'
sleep(0.4)
puts
puts 'You should know the rules by now.'
puts
puts "If you don't that sucks"
sleep(3)
require_relative '../lib/game'
game = Game.new.start

puts 'HAVE A NICE DAY!!!'
puts
