def index
    @posts = Post.all()
    render action: 'index'
  end

  def new
    @post = Post.new()
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new({"title": params[:post][:title],"content": params[:post][:content]})
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
    if @post.update({title: params[:post][:title], content: params[:post][:content]})
      redirect_to posts_path
    else
      render :edit
    end
  end
  def destroy
    @post = Post.find(params[:id])
    @post.delete
    redirect_to posts_path
  end
end
