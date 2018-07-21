class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name, limit: 25
      t.integer :post_id
      t.integer :user_id
      t.integer :popularity

      t.timestamps
    end
  end
end
