Rails.application.routes.draw do
  get 'ticket_types/create'
  get 'ticket_types/destroy'
  get 'ticket_types/update'
  post 'tickets/create'
  delete 'tickets/destroy'
  put 'tickets/update'
  post 'event_venues/create'
  delete 'event_venues/destroy'
  put 'event_venues/update'
  post 'events/create'
  delete 'events/destroy'
  put 'events/update'
  post 'users/create'
  delete 'users/destroy'
  put 'users/update'
  get 'ticket_types/ticket_type_id/tickets'
  resources :users
  resources :events
  resources :event_venues
  resources :ticket_types do
    resources :tickets
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
