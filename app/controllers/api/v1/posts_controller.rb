class Api::V1::PostsController < ApplicationController
    def create
        slug = params["title"].downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
        
        # if slug exists, add random characters to the end of it

        post = Post.new(title: params["title"], slug: slug)
        render json: post
    end

    def show
        post = Post.find_by(slug: params[:slug])
        render json: post
    end
end
