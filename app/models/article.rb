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
#  is_featured     :boolean          default(FALSE)
#

class Article < ActiveRecord::Base
	include Recommendable
	belongs_to :user
	belongs_to :category
	belongs_to :sub_category, class_name: 'Category'
	has_many :comments, as: :commentable, dependent: :destroy
	attr_readonly :comments_count

	has_many :images, dependent: :destroy
	accepts_nested_attributes_for :images,:allow_destroy => true

	scope :by_state, ->(s){ send(s) }

	def view!
		self.class.update_counters(self.id,view_count: 0.5)
	end
	def cover
		images.order('is_cover DESC').first
	end
end
