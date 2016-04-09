class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])

    if (@post == nil)
      render file:"/public/404.html"
    end
  end


end
