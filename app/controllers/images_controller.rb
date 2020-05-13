class ImagesController < ApplicationController
  def create
    @image = Image.new(params.require(:image).permit(:url))

    @image.save
    redirect_to @image
  end

  def show
    @image = Image.find(params[:id])
  end
end
