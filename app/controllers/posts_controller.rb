class PostsController < ApplicationController

  def new
    @post = Post.new


  end


  def edit
    @post = Post.find_by_id(params[:id])
  end

  def update
    @post = Post.find_by_id(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
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

    if @post.update(post_params)
      redirect_to @post
    else
      render 'new'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end


  def post_params
    params.require(:post).permit(:title, :body)
  end

end
