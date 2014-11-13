class UserCell < Cell::Rails
  include Devise::Controllers::Helpers
  helper_method :current_user
  def with_me
  	@user = AdminUser.first
  	render
  end
end
