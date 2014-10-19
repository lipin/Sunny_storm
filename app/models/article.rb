# == Schema Information
#
# Table name: articles
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  content         :text
#  created_at      :datetime
#  updated_at      :datetime
#  user_id         :integer
#  category_id     :integer
#  sub_category_id :integer
#

class Article < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	belongs_to :sub_category, class_name: 'Category'
end
