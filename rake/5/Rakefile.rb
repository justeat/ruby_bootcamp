require 'rake'
require 'rake/clean'
require './writer.rb'

names = %w(lowest middle top)
writer = Writer.new(names)
writer.define

file 'top.txt' => 'middle.txt'
file 'middle.txt' => 'lowest.txt'

CLEAN.include '*.txt'
