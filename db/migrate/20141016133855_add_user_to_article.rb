class AddUserToArticle < ActiveRecord::Migration
  def change
  	Article.all.map {|x| x.update_attribute(:user_id, rand(1..User.all.count))}
  	Article.all.map {|x| x.update_attribute(:created_at, rand(30.days).ago)}
  end
end
