class Admin::BaseController < InheritedResources::Base

  layout 'admin'

  before_filter :authenticate_admin_user!

end