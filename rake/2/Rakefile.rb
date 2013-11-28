require 'rake'

task :child do
  puts "child"
end

task :parent do
  puts "parent"
end

# make parent depend on child.  Could have done this on line 7, too.
task :parent => [:child]
