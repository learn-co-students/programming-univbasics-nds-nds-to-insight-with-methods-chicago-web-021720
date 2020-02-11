$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
total = 0 
ri = 0 # row index
  while ri < director_data[:movies].length do 
    total += director_data[:movies][ri][:worldwide_gross]
    ri += 1 
  end 
total 
end

def directors_totals(nds)
  result = {}
  total_gross = 0
  ri = 0 # row index
  while ri < nds.length do 
    ci = 0 # column index
    name = ""
      while ci < nds[ri][:movies].length do 
        total_gross += gross_for_director(nds)
        name = nds[ri][:movies][ci][:name]
        result[name] = total_gross
        ci += 1
      end 
    ri += 1
  end 
  result
end