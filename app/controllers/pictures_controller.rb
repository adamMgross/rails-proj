class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end
  
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.create(params[:picture])
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update_attributes(params[:picture])
      redirect_to pictures_url, notice: "Picture was successfully updated."
    else
      render 'edit'
    end
  end

  def destroy
      @picture = Picture.find(params[:id])
      @picture.destroy

      redirect_to products_path
  end
  
end
