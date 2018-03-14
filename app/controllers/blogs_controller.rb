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
	end
	def index
		@blogs = Blog.all
	end
	def show
		@blog = Blog.find(params[:id])
	end
	private
		def blog_params
		params.require(:blog).permit(:title, :body, :category)
	end
	#ビューから送信されたデータはparamsというメソッドの中に入っている。
	#ストロングパラメータは、セキュリティを強固にしてるもの。
end
