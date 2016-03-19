class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  # def show
  #   @post = Post.find(params[:id])
  # end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root
    else
      render :new
    end
  end

  # def update
  #   @post.update(post_params)
  #   redirect_to root
  # end

  # def destroy
  #   @post.destroy
  # end

  private
  def post_params
    params.require(:post).permit(:name, :description, :age, :sex, :prefecture, :snapchat_name)
  end
end
