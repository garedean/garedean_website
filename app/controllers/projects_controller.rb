class ProjectsController < ApplicationController
  before_filter :authenticate_user!,
    :except => [:index]

  def index
    @projects = Project.order(:position)
  end

  def create
    # When adding the first record, Endorsement.maximum returns nil, so || is used as a default value
    @project = Project.new(position: (Project.maximum(:position) || 0) + 1)
    @project.save

    @projects = Project.order(:position)

    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  def edit_multiple
    @projects = Project.order(:position)
  end

  def update_multiple
    params[:projects].each_with_index do |project, index|
      attributes_hash = project[1]

      Project.find(project[0])
        .update(name: attributes_hash[:name],
                description: attributes_hash[:description],
                url: attributes_hash[:url],
                position: index + 1)
    end

    records_destroyed_count = destroy_empties

    # Customize flash message depending on whether empties were destroyed
    if records_destroyed_count > 0
      flash[:notice] = "#{view_context.pluralize( records_destroyed_count, 'record')} destroyed, all others updated!"
    else
      flash[:notice] = "Endorsements updated!"
    end
    redirect_to :back
  end

  private
  #
  # def project_params
  #   params.require(:project).permit(:name, :description, :url)
  # end

  def projects_params
    params.require(:projects).permit!
  end

  def destroy_empties
    records_destroyed = 0

    projects_params.each do |id, project|
      if project[:name].empty? &&
         project[:description].empty? &&
         project[:url].empty?

        Project.destroy(id.to_i)
        records_destroyed += 1
      end
    end
    records_destroyed
  end
end
