class AddArticleIdToImages < ActiveRecord::Migration
  def change
  	add_column :images, :article_id, :integer
  	add_index :images, :article_id
  end
end
