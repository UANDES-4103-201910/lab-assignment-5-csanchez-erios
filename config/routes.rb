Rails.application.routes.draw do
  get 'ticket_type/create'
  get 'ticket_type/update'
  get 'ticket_type/destroy'
  post 'tickets/create'
  delete 'tickets/destroy'
  put 'tickets/update'
  post 'event_venues/create'
  delete 'event_venues/destroy'
  put 'event_venues/update'
  post 'events/create'
  delete 'events/destroy'
  put 'events/update'
  get 'events/upcoming_events'
  post 'users/create'
  delete 'users/destroy'
  put 'users/update'
  get 'users/user_with_most_tickets'
  get 'ticket_types/ticket_type_id', to: 'tickets#create'
  get 'ticket_types/ticket_type_id', to: 'tickets#destroy'
  get 'ticket_types/ticket_type_id', to: 'tickets#update'
  resources :users
  resources :events
  resources :event_venues
  resources :ticket_type do
    resources :tickets, only: [:create, :update, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
