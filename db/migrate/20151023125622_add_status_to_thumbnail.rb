class AddStatusToThumbnail < ActiveRecord::Migration
  def change
    add_column :thumbnails, :status, :integer
  end
end
