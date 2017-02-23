Rails.application.routes.draw do

#  get 'artist/index'

#  get 'artist/new'

#  get 'artist/edit'

#  get 'artist/show'

  root  'bill_boards#index'
  resources :bill_boards do
    resources :artists 
  end

end
