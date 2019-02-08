class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :image_url
      t.string :text
      t.integer :likes
      t.text :comments

      t.timestamps
    end
  end
end
