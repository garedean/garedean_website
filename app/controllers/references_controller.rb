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

    records_destroyed_count = destroy_empties

    # Customize flash message depending on whether empties were destroyed
    if records_destroyed_count > 0
      flash[:notice] = "#{view_context.pluralize( records_destroyed_count, 'record')} destroyed, others updated!"
    else
      flash[:notice] = "References have been updated!"
    end
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
    records_destroyed = 0

    references_params.each do |id, reference|
      if reference[:quote].empty?
        Reference.destroy(id.to_i)
        records_destroyed += 1
      end
    end

    records_destroyed
  end
end
