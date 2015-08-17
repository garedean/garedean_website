module StaticPagesHelper
  def resume_block(&block)
    content_tag :div, &block
  end

  def position_details(company_name, job_title, details)
    company_name = content_tag(:strong, "#{company_name }, ")
    job_title    = content_tag(:strong, "#{job_title} ")
    details      = content_tag(:em, details)
    content = company_name + job_title + details
    content_tag(:p, content)
  end

  def position_highlights(&block)
    content_tag :ul, &block
  end

  def bullet_point(&block)
    content_tag(:li, &block)
  end
end
