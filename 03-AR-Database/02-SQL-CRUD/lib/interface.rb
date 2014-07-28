require_relative "crud"

def ask_and_get(param)
  puts "What is the #{param} for your post?"
  gets.chomp

end

db_path = "lib/db/news.sqlite"
db = SQLite3::Database.new(db_path)

create_scheme(db)

while true

  puts "Hey you, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read a post"
  puts "3. Read your posts"
  puts "4. Delete all posts"
  puts "5. Delete a post"
  puts "6. Update a post"
  puts "7. Exit"

  # TODO: add other CRUD tasks if you wish!
  choice =  gets.chomp.to_i

  case choice
  when 1
    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating (from 1 to 5)")
    post = { name: name, source_url: source_url, date: Time.now, rating: rating }
    create_post(db, post)
  when 2
    get_post(db, id)
  when 3
    get_posts(db)
  when 4
    delete_posts(db)
  when 5
    delete_post(db, id)
  when 6
    update_post(db, id, name)
  when 7
    break
  end

end