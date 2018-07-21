class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, limit: 100
      t.integer :user_id
      t.integer :popularity

      t.timestamps
    end
  end
end
