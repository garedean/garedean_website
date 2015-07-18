class StaticPagesController < ApplicationController
  def landing_page
    render :layout => 'layouts/landing_layout'
  end

  def references
  end
end
