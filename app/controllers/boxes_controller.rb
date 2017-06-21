class BoxesController < ApplicationController
  def new
    @box = Box.new
  end

  def create
    @box = Box.create!(box_params)
    @box.update_attributes(qrcode_url: "qr_codes/#{@box.id}.png")
    redirect_to @box
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @boxes = Box.all
  end

  def show
    @box = Box.find(params[:id])
  end

  private
  def box_params
    params.require(:box).permit(:title, :content)
  end
end
