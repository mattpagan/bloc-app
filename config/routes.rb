Rails.application.routes.draw do
 devise_for :users
 resources :posts, :questions

  get 'welcome/contact'
  get 'about' => 'welcome#about'
    
    root to: 'welcome#index'
end
