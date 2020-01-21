$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  movies_list = director_data[:movies]
  index = 0
  while index < movies_list.length do 
    total += movies_list[index][:worldwide_gross]
    index += 1
  end
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  
  index = 0
  while index < nds.length do
    dir_name = nds[index][:name]
    result[dir_name] = gross_for_director(nds[index])
    index += 1
  end
  result
end
