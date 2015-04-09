class PostsController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?
 
   protected
 
   def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) << :name
   end

  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

  def new
  end

  def edit
  end
  
  def create
  @post = current_user.posts.build(params.require(:post).permit(:title, :body))
  end
end
