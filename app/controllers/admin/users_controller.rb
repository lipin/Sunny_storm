class Admin::UsersController <  Admin::BaseController
  defaults resource_class: User, collection_name: 'users', instance_name: 'user'

end
