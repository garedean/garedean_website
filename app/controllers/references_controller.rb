class ReferencesController < ApplicationController
  def index
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

  def edit_multiple
    @references = Reference.all
    @reference = Reference.new
  end

  def update_multiple
    Reference.update(params[:references].keys, params[:references].values)

    # If user erases all content for a references, delete
    # that reference record from the db
    destroy_empties

    redirect_to edit_multiple_references_path
  end

  private

  def reference_params
    params.require(:reference).permit(:quote)
  end

  def references_params
    params.require(:references).permit!
  end

  def destroy_empties
    references_params.each do |id, reference|
      Reference.destroy(id.to_i) if reference[:quote].empty?
    end
  end
end
