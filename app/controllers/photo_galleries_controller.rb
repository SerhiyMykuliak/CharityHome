class PhotoGalleriesController < ApplicationController
  before_action :authenticate_admin, only: [:edit, :new, :create, :edit, :update, :destroy]
  
  def index
    @photos = PhotoGallery.all.order(created_at: :desc).page(params[:page]).per(8)
  end

  def new
    @photo = PhotoGallery.new
  end

  def create
    @photo = PhotoGallery.new(photo_params)

    if @photo.save
      redirect_to photo_galleries_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @photo = PhotoGallery.find(params[:id])
  end

  def update
    @photo = PhotoGallery.find(params[:id])

    if @photo.update(photo_params)
      redirect_to photo_galleries_path
    else
      render :edit, status: :unprocessable_entity
    end
    
  end

  def destroy
    @photo.destroy!
  end

  private


  def photo_params
    params.require(:photo_gallery).permit(:title, :photo)
  end
end
