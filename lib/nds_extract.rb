$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

pp directors_database

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total_gross = 0
  for movie in director_data[:movies] do
    total_gross += movie[:worldwide_gross]
  end
  total_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  for director in nds do
    result[director[:name]] = gross_for_director(director)
  end
  result
end
