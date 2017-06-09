require 'humanize'
no_space_array, total = [], 0
(1..1000).to_a.map(&:humanize).each {|x| no_space_array << x.delete(' ').delete('-')}.each {|i| total += i.length }
p total
