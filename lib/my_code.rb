# In this lab, we're going to write several `map`-like and `reduce`-like
# methods and put them in `lib/my_code.rb`:

# ### `map`-like

# - `map_to_negativize(source_array)`
# - `map_to_no_change(source_array)`
# - `map_to_double(source_array)`
# - `map_to_square(source_array)`

# Remember, all `map` methods return a new `Array`.

# ### `reduce`-like

# - `reduce_to_total(source_array, starting_point)`
# - `reduce_to_all_true(source_array)`
# - `reduce_to_any_true(source_array)`

# Remember, all `reduce` methods return a _value_.


def map_to_negativize(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( source_array[i] * -1 )
    i += 1
  end
  return new
end

def map_to_no_change(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( source_array[i] )
    i += 1
  end
  return new
end

def map_to_double(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( source_array[i] * 2 )
    i += 1
  end
  return new
end

def map_to_square(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( source_array[i] * source_array[i] )
    i += 1
  end
  return new
end

def reduce_to_total(source_array, starting_point=0)
  new = starting_point
  i = 0
  while i < source_array.length do
    new += source_array[i]
    i += 1
  end
  return new
end

def reduce_to_all_true(source_array)
  i = 0
  while i < source_array.length do
    return false if !source_array[i]
    i += 1
  end
  return true
end

def reduce_to_any_true(source_array)
  i = 0
  while i < source_array.length do
    return true if source_array[i]
    i += 1
  end
  return false
end