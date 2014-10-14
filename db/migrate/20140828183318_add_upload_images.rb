class AddUploadImages < ActiveRecord::Migration
  def change
  	add_column :pictures, :images, :binary
  end
end
