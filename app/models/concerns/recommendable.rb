module Recommendable
  extend ActiveSupport::Concern

  included do
    scope :featured, ->{ where(is_featured: true) }
    scope :unfeatured, ->{ where(is_featured: false) }

  end

  def mark_as_featured!
    update_attribute(:is_featured, true)
  end

  def mark_as_unfeatured!
    update_attribute(:is_featured, false)
  end

end
