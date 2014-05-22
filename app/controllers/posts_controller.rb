class PostsController < ApplicationController

  before_filter :authenticate_user!
  def new
    @post = Post.new

  end

def create
    @post = Post.new(post_params)

    if @post.save
      flash[:notice] = "Informations are  successfully updated"
      redirect_to posts_path
    else

      render 'new'
    end
  end


  def show
    @post = Post.find(params[:id])
  end


  

  def index
@posts = Post.search(params[:search]).order("title").page(params[:page]).per(8)
end

  def edit
    @post = Post.find(params[:id])
  end


  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to posts_path
    else
      render 'edit'
    end
  end


  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end



  private
  def post_params
    params.require(:post).permit(:title, :authorname, :edition, :price, :description)
  end
end