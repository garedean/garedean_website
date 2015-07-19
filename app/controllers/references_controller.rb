class ReferencesController < ApplicationController
  def index
    @reference = Reference.new
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

  def edit_all
    @references = Reference.all
  end

  def update_all
    binding.pry
    reference_params.each do |id|
      @reference = Reference.find(id.to_i)
      @reference.update_attributes(reference_params[id])
    end

    redirect_to(references_path)
  end

  private

  def reference_params
    params.require(:reference).permit(:quote, {:reference => []})
  end

end
