class ListsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render "footprints/index"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def list_params
    params.require(:list).permit(:value, items_attributes: [:category])
  end
end


# class DosesController < ApplicationController
#   # def new
#   #   @cocktail = Cocktail.find(params[:cocktail_id])
#   #   @dose = Dose.new
#   # end

#   def create
#     @cocktail = Cocktail.find(params[:cocktail_id])
#     @dose = Dose.new(dose_params)
#     @dose.cocktail = @cocktail
#     if @dose.save
#       redirect_to cocktail_path(@cocktail)
#     else
#       @review = Review.new
#       render "cocktails/show"
#     end
#   end

#   def destroy
#     @dose = Dose.find(params[:id])
#     @dose.destroy
#     redirect_to cocktail_path(@dose.cocktail)
#   end

#   private

#   def dose_params
#     params.require(:dose).permit(:description, :ingredient_id)
#   end
# end
