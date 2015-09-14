class AddCulumToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :member, :string
    add_column :users, :avatar, :text
    add_column :users, :profile, :text
    add_column :users, :works, :text
  end
end
