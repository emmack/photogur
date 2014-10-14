class AddALikeCount < ActiveRecord::Migration
  def change
  	add_column :pictures, :likes, :integer
  end
end
