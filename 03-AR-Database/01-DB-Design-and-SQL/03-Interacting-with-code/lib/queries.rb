require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
  #TODO: count number of rows in table table_name
number_of_rows = db.execute "SELECT COUNT (*) from #{table_name}"
number_of_rows[0][0]
end

def sorted_artists(db)
  #TODO: return array of artists' names sorted alphabetically
sorted_artists = db.execute "SELECT name from artist ORDER BY name ASC"
sorted_artists.flatten
end

def love_tracks(db)
  #TODO: return array of love songs
love_tracks = db.execute "SELECT name from track WHERE title = '%love%'"
love_tracks.flatten
end

def long_tracks(db, min_length)
  #TODO: return tracks verifying: duration > min_length (minutes)
long_tracks = db.execute "SELECT  from  "
long_tracks.flatten
end

p number_of_rows(db, "track")
p sorted_artists(db)
p love_tracks(db)
