# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Article < ActiveRecord::Base
	belongs_to :user
end
