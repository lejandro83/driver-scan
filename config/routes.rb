Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'page#index'
  get '/faq' => "page#faq", :as => :faqs
  get '/maintenance' => "page#contact", :as => :contact
end
