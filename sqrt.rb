#!/usr/bin/ruby
# 
# Simple implementation of the Babylonian-/ Heron-Method to compute the square root.
# Further method explanations at:
# http://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method
#
# Usage:
# ------
# $ ruby sqrt.rb 9 
#
# Babylonian-/ HERON Method                                                                                                                                                                                                                           
# =========================                                                                                                                                                                                                                           
# to compute the square root of '9':                                                                                                                                                                                                     
#                                                                                                                                                                                                                                        
# x = 1; b = 9                                                                                                                                                                                                                           
# x = 5; y = 1                                                                                                                                                                                                                           
# x = 3; y = 3                                                                                                                                                                                                                           
#                                                                                                                                                                                                                                       
# Elapsed time: 0.414677 !
#
# License
# -------
# The MIT License (MIT), see LICENSE file.

AREA = ARGV[0].to_i

def square_root(x = 1, y)
  puts "x = #{x}; y = #{y}" 
  
  while (x - y).abs > 1 do   
    x = (x + y) / 2
    y = AREA / x
    puts "x = #{x}; b = #{y}"    
  end
end

puts " "
puts "Babylonian-/ HERON-Method"
puts "========================="
puts "to compute the square root of '#{AREA}':"
puts " "
time = Time.now  
square_root(AREA)
time = (Time.now - time) * 1000 
puts " "
puts "Elapsed time: #{time} !"
