class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :full_name
      t.string :email
      t.text :message
      t.references :film, index: true, foreign_key: true
      t.timestamps
    end
  end
end
