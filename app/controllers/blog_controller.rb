class BlogController < ApplicationController
  def index
    @posts = BlogPost.visible.ordered
    @categories = BlogCategory.active.ordered
  end

  def show
    @post = BlogPost.visible.find_by!(slug: params[:slug])
  end
end
