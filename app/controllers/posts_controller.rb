class PostsController < ApplicationController

    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new
        @post["name"] = params["post"]["name"]
        @post["date"] = params["post"]["date"]
        @post.save
        redirect_to "/posts"
    end
    
end
