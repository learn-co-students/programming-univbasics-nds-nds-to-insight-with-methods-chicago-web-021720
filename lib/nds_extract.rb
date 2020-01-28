$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross = 0
  row_index = 0 
  while row_index < director_data[:movies].length do
    gross += director_data[:movies][row_index][:worldwide_gross]
    row_index += 1
  end
  return gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index = 0
 while director_index < nds.length do
  result.store(nds[director_index][:name],
  gross_for_director(nds[director_index]))
  director_index += 1
end
 return result
end
