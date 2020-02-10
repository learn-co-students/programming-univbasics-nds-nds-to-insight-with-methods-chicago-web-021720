$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  i = 0
  total = 0
  while i < director_data[:movies].count
    total += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  return total
end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
my_results = {}
x = 0
total = 0

#while i < nds.count
#  my_results[:name] = nds[i][""]
#  i += 1
#end
#binding.pry
while x < nds.size
  #exibinding.pry
  directors_name = nds[x][:name]
  my_results[directors_name] = 0
  i = 0
  while i < nds[x][:movies].count #[:movies][x][:worldwide_gross]
    my_results[directors_name] += nds[x][:movies][i][:worldwide_gross]
    i += 1
  end
  x += 1
end
my_results
end
