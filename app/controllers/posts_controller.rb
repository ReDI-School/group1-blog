class PostsController < ApplicationController

  def new

  end



  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])

    if (@post == nil)
      render file:"/public/404.html"
    end
  end

  def create
    @post = Post.new(post_params)

    @post.save
    redirect_to @post
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
