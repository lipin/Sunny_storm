# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  body             :text
#  commentable_id   :integer
#  commentable_type :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  user_id          :integer
#

class Comment < ActiveRecord::Base

	belongs_to :user
	belongs_to :quote, class_name: 'Comment', foreign_key: 'quote_id'
	belongs_to :commentable, polymorphic: true, counter_cache: :comments_count
end
