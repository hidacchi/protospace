class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :title
      t.integer :user_id
      t.text :catchcopy
      t.text :concept
      t.timestamps
    end
  end
end
