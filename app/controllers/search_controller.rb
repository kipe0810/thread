class SearchController < ApplicationController

	def search
		@posts = Post.search(params[:search])
		@search = params[:search]
		@categories = Category.all
	end
end
