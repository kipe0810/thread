class CategorysController < ApplicationController
	def show
		@category = Category.find(params[:id])
		@categories = Category.all
	end
end
