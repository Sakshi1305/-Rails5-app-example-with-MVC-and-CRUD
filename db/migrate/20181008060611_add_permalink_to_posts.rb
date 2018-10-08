class AddPermalinkToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :permalink, :string
    add_index :posts, :permalink
  end
end
