#!/usr/bin/env ruby
require 'rubygems'
require 'date'
require 'spec'
require 'treetop'

Treetop.load('scientific_name')

parser = ScientificNameParser.new

count = 0
count2 = 0
IO.foreach('names.txt') do |n|
  puts 'started' if count2 == 0
  count2 += 1
  puts count2.to_s + "/" + count.to_s if count2 % 10000 == 0
  n.strip!
  unless parser.parse n
    puts n
    count += 1
  end    
end
puts count.to_s
