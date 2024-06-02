class PostsController < ApplicationController
    def index 
        @posts=Post.all
        # @posts=@posts.to_a
        puts "////////////#{@posts.to_a}"
    end

    def new 
        @post=Post.new
        
    end

    def edit 
        @post=Post.find(params[:id])
    end

    def update 
        @post=Post.find(params[:id])
        if @post.update({title:params[:post][:title], content:params[:post][:content]})
            redirect_to post_url(@post)
        else
            render :edit, status: 422
        end 
    end

    def destroy 
        @post =Post.find(params[:id])
        @post.destroy!
        redirect_to post_url
    end

    def show 
        @post=Post.find(params[:id])
        
    end

    def create

        @post = Post.new(title: params[:post][:title], content: params[:post][:content])
        if @post.save
            redirect_to post_url(@post)
        else
            render :new
        end

    end
end