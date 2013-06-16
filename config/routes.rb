Knuvu::Application.routes.draw do

  devise_for :users

	# JSON Api Web Front
	namespace :api, :constraints => {:format => 'json'} do
		namespace :v1 do
			get '/' => 'default#index' # API Info Page
		end
  end

  # HTML Web Front
	root :to => 'default#index' # App HTML Index
	get '/about' => 'default#about'
	get '/professional-services' => 'default#professional_services'
	get '/products' => 'default#products'
	get '/contact-us' => 'default#contact_us'
	get '/consulting-and-transactional-services' => 'default#consulting_and_transactional_services'
	get '/board-of-directors' => 'default#board_of_directors'

end
