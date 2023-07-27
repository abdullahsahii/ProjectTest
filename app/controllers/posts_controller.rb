require 'httparty'
class PostsController < ApplicationController
  def home
    response = HTTParty.get('https://jsonplaceholder.typicode.com/posts')
    posts_data = JSON.parse(response.body)

    posts_data.each do |post_data|
      Post.create(body: post_data["body"], title: post_data["title"])
    end
    @posts = Post.paginate(:page => params[:page], :per_page => 10)
  end
end
