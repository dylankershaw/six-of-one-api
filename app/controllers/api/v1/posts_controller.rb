class Api::V1::PostsController < ApplicationController
    def create        
        post = Post.new(title: params["title"], slug: params["slug"])
        render json: post
    end

    def show
        post = Post.find_by(slug: params["slug"])
        render json: post
    end
end
