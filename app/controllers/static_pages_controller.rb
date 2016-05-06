class StaticPagesController < ApplicationController
  def home
    @posts = Post.all.limit(5)
  end
end
