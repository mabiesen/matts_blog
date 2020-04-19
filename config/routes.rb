Rails.application.routes.draw do
  resources :blogs

  get '/blog_page/:blog_title', to: 'blogs_display#blog_page'
  get '/blog_home', to: 'blogs_display#blog_home'
end
