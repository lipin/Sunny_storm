class AddIsCoverToImages < ActiveRecord::Migration
  def change
  	add_column :images, :is_cover, :boolean, default: false
  end
end
