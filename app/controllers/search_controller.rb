class SearchController < ApplicationController

	def search
		@posts = Post.search(params[:search])
		@search = params[:search]
	end
end
