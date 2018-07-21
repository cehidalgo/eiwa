class AddTextToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column(:posts, :full_content, :text, default: nil)
    rename_column(:posts, :context, :description)
  end
end
