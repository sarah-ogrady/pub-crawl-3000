Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# see all the restaurants  - (read)
get '/restaurants', to: 'restaurants#index'


# add a restaurant  - (create)
get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
post '/restaurants', to: 'restaurants#create'

# see show page for one restaurant (read)
get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

# update a restaurant (update)
get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
patch '/restaurants/:id', to: 'restaurants#update'

# delete a restaurant (delete)
delete '/restaurants/:id', to: 'restaurants#destroy'

# resources :restaurants

# verb + 'path', to: 'controller#method_name'

end
