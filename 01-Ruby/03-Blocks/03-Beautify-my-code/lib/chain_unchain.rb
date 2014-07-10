def shuffle_word(a_word)
  #TODO: refactor this method

  [a_word.upcase].shuffle

end


def quote_prime_numbers(n)
  #TODO: refactor this method

 variable_prime = (1..n).find_all do |i|
  (2..i-1).select {|k| i % k == 0}.count == 0
  end

  variable_prime.map do |prime_num|
    "#{prime_num} is prime"
  end
end