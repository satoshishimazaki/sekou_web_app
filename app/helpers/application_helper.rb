module ApplicationHelper

  def flash_message(message,klass)
    content_tag(:div, class: "alert alert-#{klass}") do
      concat content_tag(:button, 'x' , class: 'close' , data: { dismiss: 'alert'})
      concat raw(message)
    end
  end

  def parent_layout(layout)
    # @view_flow.append(:layout, self.output_buffer)
    self.output_buffer = render(file: "layouts/#{layout}")
  end

  def dateformat(date)
    if date.blank?
      return ""
    else
      date.strftime("%Y年%m月%d日")
    end
  end

  def full_title(page_title)
    base_title = "ジョブ建設 測量・設計"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def gtm_script
    if Rails.env.production?
      render 'layouts/gtm'
    end
  end

  def gtm_noscript
    if Rails.env.production?
      render 'layouts/gtm_noscript'
    end
  end

end
