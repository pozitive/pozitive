Pozitive::Application.routes.draw do

  # redirect from pages to blog
  get "/ru/pages/create-and-seo-website-on-chinese-language"  => redirect("/blogs/create-and-seo-website-on-chinese-language")
  get '/ru/pages/create-website-on-chinese-language' => redirect('/blogs/create-website-on-chinese-language')
  get '/ru/pages/design-on-chinese-language' => redirect('/blogs/design-on-chinese-language')
  get '/ru/pages/faq' => redirect('/blogs/faq')
  get '/ru/pages/advertising-baidu' => redirect('/blogs/advertising-baidu')
  get '/ru/pages/how-to-get-to-baidu' => redirect('/blogs/how-to-get-to-baidu')
  get '/ru/pages/promotion-in-the-chinese-internet' => redirect('/blogs/promotion-in-the-chinese-internet')
  get '/en/pages/benefits_of_multilingual_seo' => redirect('/blogs/benefits_of_multilingual_seo')
  get '/en/:article' => redirect('/%{article}')
  get '/en/:blog/:article' => redirect('/%{blog}/%{article}')
  get '/ru/:article' => redirect('/%{article}')
  get '/ru/:blog/:article' => redirect('/%{blog}/%{article}')

  resources :pages
  resources :messages
  resources :blogs
  get 'services' => 'pages#services'
  get 'portfolio' => 'pages#portfolio'
  get 'about_us' => 'pages#aboutus'
  get 'contact_us' => 'pages#contactus'
  get 'our_process' => 'pages#our_process'
  root to: 'pages#welcome'
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  devise_for :admins, :skip => [:registrations] 
  as :admin do
    get 'admins/edit' => 'admins/registrations#edit', :as => 'edit_admin_registration'
    put 'admins' => 'admins/registrations#update', :as => 'admin_registration'
  end

  get 'sitemap.xml' => 'sitemap#index', as:'sitemap', defaults: {format: 'xml'}
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
