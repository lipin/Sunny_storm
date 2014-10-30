# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  img        :string(255)
#  article_id :integer
#  is_cover   :boolean          default(FALSE)
#

class Image < ActiveRecord::Base
  include ImageVersion
	mount_uploader :img, ImgUploader
	belongs_to :article
end
