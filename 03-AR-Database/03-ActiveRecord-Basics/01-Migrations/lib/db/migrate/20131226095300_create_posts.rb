class CreatePosts < ActiveRecord::Migration
  def up
    #TODO: your code here to create the Posts table
    create_table :posts do |t|
      t.string :name
      t.string :source_url
      t.datetime :created_at
    end
  end
end

