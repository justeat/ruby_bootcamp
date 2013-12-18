require 'rake'

namespace :say do
  desc 'say hi'
  task :hi do
    puts "hi"
  end

  desc 'say bye'
  task :bye do
    puts "bye"
  end

  desc 'say all the things'
  task :all => [:hi, :bye]
end

task :default => ['say:all']
