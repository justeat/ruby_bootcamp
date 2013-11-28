require 'rake'

desc "print 'hello world'"
task :default do
  puts "hello world"
end

desc "print 'something else'"
task :foo do
  puts "something else"
end
