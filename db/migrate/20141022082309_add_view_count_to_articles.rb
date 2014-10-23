class AddViewCountToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :view_count, :float, default: 0
  end
end
