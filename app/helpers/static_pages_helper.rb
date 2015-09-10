module StaticPagesHelper
  def resume_block(&block)
    content_tag :div, class: "row", &block
  end

  def left_column(company_name, job_title = nil, job_location, job_time_period)
    content_tag :div, class: "col-md-4" do
      job_title_tag = content_tag(:span, "#{', ' + job_title}", class: 'job-title')

      name_title = content_tag :p,  {class: 'company-name'} do
        concat company_name
        concat "#{job_title_tag}".html_safe
      end

      concat name_title
      concat content_tag :p, job_location,    class: 'job-location'
      concat content_tag :p, job_time_period, class: 'job-time-period'
    end
  end

  def right_column(&block)
    content_tag :div, class: "col-md-8" do
      block.call
    end
  end

  def job_title(title)
    content_tag :p, title, class: "job-title"
  end

  def position_highlights(&block)
    content_tag :ul, &block
  end

  def bullet_point(&block)
    content_tag :li, &block
  end
end
