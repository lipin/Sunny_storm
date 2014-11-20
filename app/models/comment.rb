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
#  quote_id         :integer
#

class Comment < ActiveRecord::Base
	validates :body, presence: true
	belongs_to :user
	belongs_to :quote, class_name: 'Comment', foreign_key: 'quote_id'
	belongs_to :commentable, polymorphic: true, counter_cache: :comments_count
	scope :really, ->{ where('id is not null') }
	scope :by_time, ->{ order('created_at ASC') }
	 delegate :username, to: :user, prefix: false
	def quote_user_email
	    if quote
	      quote.try(:user).try(:email)
	    else
	      "该引用评论已被删除"
	    end
    end
end
