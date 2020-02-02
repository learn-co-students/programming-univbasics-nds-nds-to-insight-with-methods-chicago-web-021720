$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movies_array = director_data[:movies]
  movies_array_index = 0
  gross_income = 0
  while movies_array_index < movies_array.count do
    money = movies_array[movies_array_index][:worldwide_gross]
    gross_income += money
    movies_array_index += 1
  end
  gross_income
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  first_array_index = 0
  while first_array_index < nds.count do
    director_data = nds[first_array_index]
    director_name = director_data[:name]
    result[director_name] = gross_for_director(director_data)
    first_array_index += 1
  end
  result
end




{:name=>"Stephen Spielberg",
 :movies=>
  [{:title=>"Jaws",
    :studio=>"Universal",
    :worldwide_gross=>260000000,
    :release_year=>1975},
   {:title=>"Close Encounters of the Third Kind",
    :studio=>"Columbia",
    :worldwide_gross=>135189114,
    :release_year=>1977},
   {:title=>"Raiders of the Lost Ark",
    :studio=>"Paramount",
    :worldwide_gross=>248159971,
    :release_year=>1981},
   {:title=>"E.T. the Extra-terrestrial",
    :studio=>"Universal",
    :worldwide_gross=>435110554,
    :release_year=>1982},
   {:title=>"Schindler's List",
    :studio=>"Universal",
    :worldwide_gross=>96898818,
    :release_year=>1993},
   {:title=>"Lincoln",
    :studio=>"Buena Vista",
    :worldwide_gross=>182207973,
    :release_year=>2012}]}