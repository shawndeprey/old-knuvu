Knuvu::Application.routes.draw do

	# JSON Api Web Front
	namespace :api, :constraints => {:format => 'json'} do
		namespace :v1 do
			get '/' => 'default#index' # API Info Page
		end
  end

  # HTML Web Front
	get '/' => 'default#index' # App HTML Index

end
