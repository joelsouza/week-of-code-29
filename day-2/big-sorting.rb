#!/bin/ruby
n = gets.strip.to_i
unsorted = Array.new(n)
for unsorted_i in (0..n-1)
 unsorted[unsorted_i] = gets.strip
end
# your code goes here
unsorted.map!(&:to_i).sort.each do |i|
  p i
end
