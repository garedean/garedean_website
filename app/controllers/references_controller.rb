class ReferencesController < ApplicationController
  def index
    @reference = Reference.new
    @references = Reference.all
  end

  def edit
    @references = Reference.all
  end

  def create
    @reference = Reference.new(reference_params)
    @reference.save
    redirect_to :back
  end

  def destroy
    @reference = Reference.find(params[:id])
    @reference.destroy
    redirect_to :back
  end

  private

  def reference_params
    params.require(:reference).permit(:quote)
  end
end
