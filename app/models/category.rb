# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  ancestry   :string(255)
#  position   :integer          default(1)
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
	has_ancestry
	# validates :name, presence: true

	has_many :articles
	default_scope{ order(:position)}

end
