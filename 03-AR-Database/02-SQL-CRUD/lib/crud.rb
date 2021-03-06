require 'sqlite3'



def create_scheme(db)
  #Initialisation de la bd sql(collonne et champs)
  sql = %q{

    CREATE TABLE IF NOT EXISTS news
    (
      id INTEGER PRIMARY KEY,
      name VARCHAR (255),
      rating INT,
      source_url VARCHAR (255),
      date VARCHAR (255)
    )
  }
  db.execute(sql)
end

def create_post(db, post)#creation d un post
  db.execute("INSERT INTO news (name, rating, source_url, date)
              VALUES ('#{post[:name]}', #{post[:rating]}, '#{post[:source_url]}', '#{post[:date]}')")
end

def get_posts(db) #acceder aux post
  rows = db.execute("SELECT * FROM news")
    rows.each do |row|
    puts "id : #{row[0]} // name : #{row[1]} // rating : #{row[2]} // source_url : #{row[3]} // date : #{row[4]}"
    end
end

def get_post(db, id)#acceder à un post
  row = db.execute("SELECT * FROM news WHERE id = #{id.to_i}")
  puts "id : #{row[0]} // name : #{row[1]} // rating : #{row[2]} // source_url : #{row[3]} // date : #{row[4]}"

end

def update_post(db, id, name) #MAJ d un post
  db.execute("UPDATE news SET name = '#{name}' WHERE id = '#{id.to_i}'")
  #TODO: update a post's name in your db
end

def delete_posts(db) #supprimer des posts
  db.execute("DELETE FROM news")
  #TODO: delete a post in your db
end

def delete_post(db, id) #suprrimer un post
  db.execute("DELETE FROM news WHERE id = #{id.to_i}")
end

