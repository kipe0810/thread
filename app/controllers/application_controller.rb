class ApplicationController < ActionController::Base

  protected
	def after_sign_in_path_for(resource)
    posts_path
  end
end
