#!/usr/bin/env ruby


def get_color(year)
  colors = { 0 => "yellow", 1 => "red", 2 => "green", 3 => "purple"}
  start = 1951
  #years = (1951..2051).map
  #year.each do |year|
    p = ((year - start) % 4)
    if colors.has_key?(p)
      puts "#{year}: #{colors[p]}"
    end
  #end
end

puts "give me a year"
year = gets.to_i
if year.to_s.match(/^\d{2,4}\d{1}/)
  get_color(year)
else
  puts "not a valid year"
end