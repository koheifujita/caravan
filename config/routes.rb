Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	# get '/blogs' => 'blogs#index'
	# get '/blogs/new' => 'blogs#new'
	# post '/blogs' => 'blogs#create'
	# get '/blogs/:id' => 'blogs#show', as: 'blog'
	# get '/blogs/:id/edit' => 'blogs#edit', as: 'edit_blog'
	# patch '/blogs/:id' => 'blogs#update', as: 'update_blog'
	#delete '/blogs/:id' => 'blogs#destroy', as: 'destroy_post'
	# resources :blogsでも定義してくれる→ターミナルで確認できる(rake routes)
	root "blogs#index"
	#urlを何も指定していない時の初期画面を設定
	resources :blogs
end
