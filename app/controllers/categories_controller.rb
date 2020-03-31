class CategoriesController < ApplicationController
	before_action :authenticate_user!,  only: [:new, :create]

	def show
		@category = Category.find(params[:id])
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to posts_path
		else
			render 'new'
		end
	end

	private
	def category_params
		params.require(:category).permit(:name)
	end

end
