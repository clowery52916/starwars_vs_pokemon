Rails.application.routes.draw do

  get '/pokemon', to: 'pokemons#index'

  get '/starwar', to: 'starwars#index'

  patch '/starwars/:id', to: "starwars#update", as: 'update_starwar'
  
  patch '/pokemons/:id', to: "pokemons#update", as: 'update_pokemon'

  get '/fights', to: 'fights#index'

 

end
