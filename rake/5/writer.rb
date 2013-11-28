class Writer
  include Rake::DSL

  def initialize(names=[])
    @names = names.map(&:to_sym)
  end

  def define
    @names.each do |x|
      file "#{x}.txt" do |f|
        write_file f
      end
      desc "Build #{x}.txt"
      task x => "#{x}.txt"
    end
  end

  private

  def write_file(task)
    File.open(task.name, 'w') {|file| file.puts task.name }
  end
end
