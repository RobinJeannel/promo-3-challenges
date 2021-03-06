# Warning:
# - One line of code for each method
# - Just look in the doc for the right method of the String, Fixnum, and Array classes !

def get_rid_of_surrounding_whitespaces(a_string)
 return a_string.strip
end

def belongs_to?(a_string, a_word)
  return a_string.include? a_word
end

def replace(initial_string, old_letter, new_letter)
  return initial_string.gsub!(old_letter, new_letter)
end

def exactly_divide(an_integer, a_divider)
  an_integer.fdiv(a_divider)
end

def is_divisible_by_two(an_integer)
  # TODO: return true if an_integer is divisible by 2
  # example: is_divisible_by_two(6) => true
  an_integer.even?

end

def random_subset(an_array, sample_size)
  # TODO: return a random subset of an_array with size sample_size
  # example: random_subset(('a'..'z').to_a, 4) => ["u", "q", "l", "t"]
  an_array.sample(sample_size)
end

def randomize(an_array)
  return an_array.shuffle
end

def ascending_order(an_array)
  # TODO: return a copy of an_array with elements in ascending order
  # example: ascending_order([7, 3, 1, 6, 9]) => [1, 3, 6, 7, 9]
  an_array.sort
end