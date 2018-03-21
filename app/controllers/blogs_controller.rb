class BlogsController < ApplicationController
	def new
		@blog = Blog.new
		#ブログモデルと紐付いた（データを入れるための）空の箱を定義
		#インスタンスという。
	end
	def create
		blog = Blog.new(blog_params)
		#ビューーから送られてきたデータをblogという空き箱に入れている
		blog.save
		redirect_to "/blogs"
		# binding.pry
	end
	def index
		@blogs = Blog.all
	end
	def show
		@blog = Blog.find(params[:id])
	end
	def edit
		@blog = Blog.find(params[:id])
	end
	def update
		blog = Blog.find(params[:id])
		blog.update(blog_params)
		redirect_to blog_path(blog.id)
		# redirect_to "/blogs/#{blog.id}"でもいける
		# rake routesで確認できるprefix（名前付きパス）を使用
	end
	def destroy
		blog = Blog.find(params[:id])
		blog.destroy
		redirect_to blogs_path
	end
	private
		def blog_params
		params.require(:blog).permit(:title, :body, :category, :blog_image)
	end
	#ビューから送信されたデータはparamsというメソッドの中に入っている。
	#ストロングパラメータは、セキュリティを強固にしてるもの。
end
