class AddSubCategoryIdToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :sub_category_id, :integer
  	add_index :articles, :sub_category_id
  end
end
