class AddQuoteIdToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :quote_id, :integer
  	add_index :comments,:quote_id
  end
end
