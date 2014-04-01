class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :name
      t.text :description
      t.string :avatar
      t.string :qqnumber
      t.integer :user_id

      t.timestamps
    end
    add_index :user_details, :user_id
    remove_column :users, :name
  end
end
