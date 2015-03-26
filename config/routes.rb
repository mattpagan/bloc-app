Rails.application.routes.draw do
 resources :posts

  get 'welcome/contact'
  get 'about' => 'welcome#about'
    
    root to: 'welcome#index'
end
