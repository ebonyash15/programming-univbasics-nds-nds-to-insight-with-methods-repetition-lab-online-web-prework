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
  directors_totals(source)
  list_of_directors(source)
  #  2. list_of_directors: names provides an Array of directors names (use
  row = 0
  while row < source.length do
    element = 0
    while element < source[row].length
      total += source[row][element]
      element += 1
    end
    row += 1
  end
  total
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
end
