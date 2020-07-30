#!/usr/bin/env ruby

puts 'Welcome to my awsome TIC TAC TOE game

'
# sleep(0.4)
puts "You should know the rules by now.

 If you don't it's kind of your problem

 "
# sleep(3)
require_relative '../lib/game.rb'
game = Game.new
game.begin_game

puts "
HAVE A NICE DAY!!!
 "
