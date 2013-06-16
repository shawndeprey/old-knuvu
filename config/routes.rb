Knuvu::Application.routes.draw do

  devise_for :users

	# JSON Api Web Front
	namespace :api, :constraints => {:format => 'json'} do
		namespace :v1 do
			get '/' => 'default#index' # API Info Page
		end
  end

  # HTML Web Front
	root :to => "default#index" # App HTML Index

end
