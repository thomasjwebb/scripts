#!/usr/bin/env ruby

# Makes different icon sizes from an svg, appending size name

if ARGV.size < 1
  puts "Must supply filename"
  exit
end

ios_sizes = [57, 72, 114, 144, 512, 1024]

ARGV.each do |filename|
  
  match = /^(.*)\.svg$/.match(filename)
  
  if not match
    puts "#{filename} isn't an svg file, skipping" 
    next
  end

  basename = match[1]

  ios_sizes.each do |size|
    `inkscape #{filename} -w #{size} -h #{size} --export-png=#{basename}#{size}.png`
  end

end