class File
  def self.open_and_process(*args)
    f = File.open(*args)
    result = f
    if block_given?
      begin
        result = yield f
      ensure
        f.close
      end
    end
    result
  end
end

File.open_and_process("./file.txt", "r") do |file|
  while line = file.gets
    # puts line
  end
end

# while(line = gets)
#   puts line
# end

File.open("./file.txt") do |file|
  file.each_line {|line| puts "Got #{line.dump}"}
end

