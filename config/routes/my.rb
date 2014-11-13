scope :my do
  get 'profile' => 'users#show', as: :my_profile
end