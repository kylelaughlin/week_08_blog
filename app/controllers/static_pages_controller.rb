class StaticPagesController < ApplicationController
  def home
    @posts = Post.all.limit(5).includes(:user)
  end
end
