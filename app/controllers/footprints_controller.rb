class FootprintsController < ApplicationController
  def index
    @footprints = Footprint.all
  end

  def show
    @footprint = Footprint.find(params[:id])
  end

  def new
    @footprint = Footprint.new
  end

  def create
    @footprint = Footprint.new(footprint_params)
    @footprint.user = current_user
    if @footprint.save
      redirect_to footprint_path(@footprint)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    find_footprint
    if @footprint.user_id == current_user.id
      @footprint.destroy
      redirect_to footprints_path
    else
      render :edit
    end
  end

  private

  def footprint_params
    params.require(:footprint).permit(:name)
  end

  def find_footprint
    @footprint = Footprint.find(params[:id])
  end
end
