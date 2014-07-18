# Encoding: utf-8 = "ISO8859-1"
require 'csv'

def most_successfull(number, max_year, filename)
  #TODO: return the number most successfull movies max_year
  all_movies = load_movies(filename)

  #filtrer les films par year et earnings
  filtered_movies_1 = all_movies.select{|movie| [:year] < max_year}
  filtered_movies_2 = filtered_movies_1.sort_by{|movie| -movie[:earnings] }
  filtered_movies2.take(number)
end


def load_movies(filename)
  movies = []
  CSV.foreach(filename, encoding: "ISO8859-1") do |row|
    title = row[0]
    date = row[1]
    earnings = row[2]

    movies << { title: title, date: date.to_i, earnings: earnings.to_i }
  end
  movies
end

most_successfull(5, 1990, "lib/movies.csv")

