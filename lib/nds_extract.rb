$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end
def gross_for_director(d)
  total = 0
  index = 0
  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end
  total
end
def list_of_directors(source)
  index = 0
  names = []
  while index < source.size do
    names << source[index][:name]
    index +=1
  end
  p names
end

def total_gross(source)
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
  #  2. list_of_directors: names provides an Array of directors names
  index = 0
  names = []
  while index < source.size do
    names << source[index][:name]
    index +=1
  end
  p names
#####
  total = 0
  element = 0
    while element < names.length
    p  name = names[element]
      total += result[name]
    p total
      element += 1
    end
  p total
end
