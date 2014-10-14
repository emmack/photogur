class UploadImages < ActiveRecord::Migration
  def change
  	  	add_column :picture, :image, :string
  end
end
