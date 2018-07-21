class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :delete, :show, :random]

  def index
    @posts = ( if params.keys.include? "page"
      Post.paginate(:page => params[:page], :per_page => 10).order('id desc')
    else
      Post.order('id desc').limit(10)
    end )
  end

  # FAZER O RESTO DAS AÇÕES!
  def edit
  end

  def update
  end

  def create
  end

  def show
  end

  def delete
  end

  def random
    @post.update_attributes(random_picked: @post.random_picked+ 1)
    render :show
  end

  private
  def post_params
    params.require(:post).permit(:content, :title, :category_id)

  end

  def find_post
    if action == :random
      @post = Post.first(:order => "RANDOM()")
    elsif
      @post = Post.find(params[:id])
    end

  end
end
