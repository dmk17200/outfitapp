class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find_by_id(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new
    @photo.description = params[:description]
    @photo.approved = params[:approved]
    @photo.user_id = params[:user_id]
    
    if @photo.save
            redirect_to photos_url
          else
      render 'new'
    end
  end

  def edit
    @photo = Photo.find_by_id(params[:id])
  end

  def update
    @photo = Photo.find_by_id(params[:id])
    @photo.description = params[:description]
    @photo.approved = params[:approved]
    @photo.user_id = params[:user_id]
    
    if @photo.save
            redirect_to photos_url
          else
      render 'edit'
    end
  end

  def destroy
    @photo = Photo.find_by_id(params[:id])
    @photo.destroy
        redirect_to photos_url
      end
end
