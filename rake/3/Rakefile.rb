require 'rake'
require 'rake/clean'

file 'lowest.txt' do |f|
  File.open(f.name, 'w') {|file| file.puts f.name }
end

file 'middle.txt' do |f|
  File.open(f.name, 'w') {|file| file.puts f.name }
end

file 'top.txt' do |f|
  File.open(f.name, 'w') {|file| file.puts f.name }
end

file 'top.txt' => 'middle.txt'
file 'middle.txt' => 'lowest.txt'

CLEAN.include ['top.txt', 'middle.txt', 'lowest.txt']
