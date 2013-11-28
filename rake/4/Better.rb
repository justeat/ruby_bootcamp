require 'rake'
require 'rake/clean'

def write_file(task)
  File.open(task.name, 'w') {|file| file.puts task.name }
end

file 'lowest.txt' do |f|
  write_file f
end
task :lowest => 'lowest.txt'

file 'middle.txt' do |f|
  write_file f
end
task :middle => 'middle.txt'

file 'top.txt' do |f|
  write_file f
end
task :top => 'top.txt'

file 'top.txt' => 'middle.txt'
file 'middle.txt' => 'lowest.txt'

CLEAN.include '*.txt'
