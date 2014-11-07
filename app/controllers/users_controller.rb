class UsersController < InheritedResources::Base
  before_action :authenticate_user!, except: [ :index,:show]

  protected

  def resource
    if params.key?(:id)
      super
    else
      authenticate_user!
      current_user
    end
  end

end
