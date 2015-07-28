Rails.application.routes.draw do

  get '/', to: 'contacts#new', as: 'home'
  get '/thanks', to: 'contacts#thanks', as: 'thanks'
  post '/contacts', to: 'contacts#create', as: 'contacts'

end
