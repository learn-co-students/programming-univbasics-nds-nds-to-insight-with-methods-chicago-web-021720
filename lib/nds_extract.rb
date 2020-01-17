$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  index = 0 
  while index < directors_database.length do 
    director_data
    if director_data == directors_database[index]
      num_of_movies = 0 
      gross = 0
      while num_of_movies < directors_database[index][:movies].length do 
        gross += directors_database[index][:movies][num_of_movies][:worldwide_gross]
        num_of_movies += 1 
      end
    end
    index += 1 
  end
  gross
end




# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  index = 0 
  while index < nds.length do 
    director = nds[index]
    money = gross_for_director(director)
    director_name = nds[index][:name]
    result[director_name] = money
    index += 1 
  end
  result
end








