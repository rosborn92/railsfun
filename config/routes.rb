Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/quadruple' => "main#quadruple"
  get '/mult' => 'main#mult'
  get '/subscribe' => 'main#subscribe'
  get '/signup' => 'main#signup'
  get '/anadeperfil' => 'main#anadeperfil'
  get '/signin' => 'main#signin'
  get '/game' => 'main#game'
end
