class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :length
      t.string :format
      #allow the user to mark the book as one of their favorites?
      t.boolean :favorite
      #belongs to user
      t.integer :user_id
    end
  end
end
