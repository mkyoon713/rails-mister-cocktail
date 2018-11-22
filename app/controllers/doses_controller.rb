class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.save
    redirect_to cocktails_path
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description)
  end
end
