class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        redirect_to post_path
      else
        render :new, status: :unprocessable_entity 
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        redirect_to post_url(@post), notice: "Post was successfully updated."
      else
        render :edit, status: :unprocessable_entity 
      end
    end
  end

  def destroy
    @post.destroy!
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content, :post_picture)
    end
end
