Rails.application.routes.draw do
 resources :posts
 resources :advertisements

  get 'welcome/contact'
  get 'about' => 'welcome#about'
  get 'advertisements' => 'advertisements#index'
    
    root to: 'welcome#index'
end
