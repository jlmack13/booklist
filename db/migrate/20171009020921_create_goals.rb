class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.integer :target_number
      #determines which of the user's goals is the current goal?
      t.boolean :active
      #belongs to user
      t.integer :user_id
    end
  end
end
