class BoxesController < ApplicationController
  def new
    @box = Box.new
  end

  def create
    @box = Box.new(box_params)
    if @box.save
      redirect_to @box
    else
      flash.now[:error] = @box.errors.full_messages
      render action: "new"
    end
  end

  def update
    @box = Box.find(params[:id])
    @box.update_attributes(processed: params[:processed])
    redirect_to @box
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
