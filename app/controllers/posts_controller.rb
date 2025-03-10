class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :authenticate_admin, only: [:edit, :new, :create, :edit, :update, :destroy]
  
  def index
    if params[:tag]
      @tag = Tag.find_by(name: params[:tag])
      if @tag
        @posts = @tag.posts.order(created_at: :desc).page(params[:page]).per(8)
        @title = "Posts with Tag: #{params[:tag]}"
      else
        @posts = Post.none.page(params[:page]).per(8)
        @title = "No posts found for Tag: #{params[:tag]}"
      end
    else
      @posts = Post.all.order(created_at: :desc).page(params[:page]).per(8)
      @title = "Blog"
    end
  end

  def show
    @post_tags = @post.tags
  end

  def new
    @post = Post.new()
    @tags = Tag.all
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: "Post succesfuly created"
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    @tags = Tag.all
  end

  def update
    
    if @post.update(post_params)
      redirect_to @post, notice: "Post succesfuly updated"
    else
      @tags = Tag.all
      render :edit, status: :unprocessable_entity 
    end

  end

  def destroy
    @post.destroy!
    redirect_to posts_path, notice: "Post succesfuly deleted"
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content, :post_picture, tag_ids: [])
    end
end
