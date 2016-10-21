class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :title, null: false
      t.string  :image_original_url, null: false, uniqueness: true
      t.string  :url, null: false, uniqueness: true
      t.string  :tag, null: false
      t.integer :image_width, null: false
      t.integer :image_height, null: false

      t.timestamps(null: false)
    end
  end
end
