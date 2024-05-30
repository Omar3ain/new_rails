class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).all
    render action: 'index'
  end

  def show
    @post = Post.find(params[:id])
  end


  def new
    @post = Post.new()
  end

  def create
    @post = Post.new({"title": params[:post][:title],"content": params[:post][:content], "user_id": params[:post][:user_id]})
    if @post.save
      redirect_to posts_path
    else
      render :new
    end

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update({title: params[:post][:title], content: params[:post][:content],"user_id": params[:post][:user_id]})
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    puts "+++ #{params}"
    @post = Post.find(params[:id])
    @post.delete
    redirect_to posts_path
  end
end
