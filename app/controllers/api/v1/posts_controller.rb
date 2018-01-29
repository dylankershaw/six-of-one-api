class Api::V1::PostsController < ApplicationController
    def update
        post = Post.find_by(slug: params["slug"])
        post.title = params["title"]
        post.slug = params["newSlug"]
        post.save

        render json: post
    end

    def show
        post = Post.find_by(slug: params["slug"])
        render json: post
    end
end
