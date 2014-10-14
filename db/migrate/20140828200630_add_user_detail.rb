class AddUserDetail < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :password, :string
  	add_column :users, :country, :string
  	add_column :users, :avatar, :string
  end
end
