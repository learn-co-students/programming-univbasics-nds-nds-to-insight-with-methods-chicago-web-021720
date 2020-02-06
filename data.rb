dir = {:name=>"Stephen Spielberg", :movies=>[{:title=>"Jaws", :studio=>"Universal", :worldwide_gross=>260000000, :release_year=>1975}, {:title=>"Close Encounters of the Third Kind", :studio=>"Columbia", :worldwide_gross=>135189114, :release_year=>1977}, {:title=>"Raiders of the Lost Ark", :studio=>"Paramount", :worldwide_gross=>248159971, :release_year=>1981}, {:title=>"E.T. the Extra-terrestrial", :studio=>"Universal", :worldwide_gross=>435110554, :release_year=>1982}, {:title=>"Schindler's List", :studio=>"Universal", :worldwide_gross=>96898818, :release_year=>1993}, {:title=>"Lincoln", :studio=>"Buena Vista", :worldwide_gross=>182207973, :release_year=>2012}]}

def gross_for_director(director_data)
  director_total = 0 
 movie_index = 0 
 while movie_index < director_data[:movies].length do 
    director_total += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1 
  end 
  puts director_total
end

def directors_totals(nds)
  director_index = 0 
  results = {}
  while director_index < nds.length do 
  results[nds][director_index][:name] = gross_for_director(nds[director_index])
  director_index += 1 
  end 
end


