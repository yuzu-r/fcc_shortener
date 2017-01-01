Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      get 'new' => 'urls#add_url', :defaults => {:format => 'html'}
      post 'new' => 'urls#create_url', :defaults => {:format => 'json'}
    end
  end
  get '/:url' => 'urls#goto'
end
