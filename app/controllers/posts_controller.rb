class PostsController <ApplicationController
    def index
        post =Post.new({title:"P1"})
        post.save!
    end
    
end