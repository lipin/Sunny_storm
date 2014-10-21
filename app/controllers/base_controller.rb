class BaseController < InheritedResources::Base

  # before_filter :load_user

  def load_user
    if params.key?(:user_id)
      @user = User.find params[:user_id]
    else
      authenticate_user!

      @user = current_user
    end
    raise ActiveRecord::RecordNotFound if @user.blank?
  end

end
