class CreateThumbnails < ActiveRecord::Migration
  def change
    create_table :thumbnails do |t|
      t.text :image
      t.integer :prototype_id
      t.integer :image_type
      t.timestamps
    end
  end
end
