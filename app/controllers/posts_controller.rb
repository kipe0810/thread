class PostsController < ApplicationController
  before_action :authenticate_user!,  only: [:new, :destroy]

  def index
  	@posts = Post.all
  	@categories = Category.all
  end

  def show
  	@post = Post.find(params[:id])
  	@post_comment = PostComment.new
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	@post.user_id = current_user.id
  	if @post.save
  		redirect_to posts_path
  	else
  		render 'new'
  	end
  end

  def destroy
  	@post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:title, category_ids: [])
    end

    def current_user!
      @post = Post.find(params[:id])
      if @post.user != current_user
        redirect_to posts_path
      end
  end
end


