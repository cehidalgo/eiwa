class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, limit: 145
      t.text :context
      t.integer :category_id
      t.integer :user_id
      t.integer :random_picked

      t.timestamps
    end
  end
end
