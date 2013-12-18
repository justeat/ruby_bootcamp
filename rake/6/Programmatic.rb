require 'rake'

namespace :say do
  %w(hi bye).each do |thing|
    desc "say #{thing}"
    task thing.to_sym do
      puts thing
    end

    task :all => thing.to_sym
  end
  desc 'say all the things'
  task :all
end

task :default => ['say:all']
