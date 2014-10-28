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
#  view_count      :float(24)        default(0.0)
#  comments_count  :integer          default(0)
#

class Article < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	belongs_to :sub_category, class_name: 'Category'
	has_many :comments, as: :commentable, dependent: :destroy
	attr_readonly :comments_count

	def view!
		self.class.update_counters(self.id,view_count: 0.5)
	end
end
