require 'fileutils'

load_paths = `ruby -e 'puts $LOAD_PATH'`
load_paths.split.each do |path|
  target = File.join path, "bundler.rb"
  if File.exist? target
    puts "Deleting #{target}"
    File.delete target
  end

  target = File.join path, "bundler"
  if File.directory? target
    puts "Deleting #{target}"
    FileUtils.rm_rf target
  end
  
end

Gem.paths.path.each do |path|
  path_mask = File.join path, "specifications", "default", "bundler*"
  Dir[path_mask].each do |target|
    puts "Deleting #{target}"
    FileUtils.rm_rf target
  end  
end

puts "✅ bundler fixed"

