class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  def index
    if params[:tag]
      @tag = Tag.find_by(name: params[:tag])
      @posts = @tag.posts.order(created_at: :desc)
    else
      @posts = Post.all.order(created_at: :desc)
    end 
  end

  def show
    @post_tags = @post.tags
  end

  def new
    @post = Post.new
    @tags = Tag.all
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      @tags = Tag.all
      render :new, status: :unprocessable_entity 
    end
    
  end

  def edit
    @tags = Tag.all
  end

  def update
    
    if @post.update(post_params)
      redirect_to @post
    else
      @tags = Tag.all
      render :edit, status: :unprocessable_entity 
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
      params.require(:post).permit(:title, :content, :post_picture, tag_ids: [])
    end
end
