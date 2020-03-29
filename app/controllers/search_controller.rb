class SearchController < ApplicationController

	def search
		@posts = Post.search(params[:search])
		# @comment = Post.includes(:post_comments).where(params[:search])
		@search = params[:search]
		@categories = Category.all
	end
end
