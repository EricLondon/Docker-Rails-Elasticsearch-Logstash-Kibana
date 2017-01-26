Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'api/pages#index'
  namespace :api do
    %w(bob loblaw law blog).each do |name|
      get "/#{name}", to: "pages##{name}"
    end
  end
end
