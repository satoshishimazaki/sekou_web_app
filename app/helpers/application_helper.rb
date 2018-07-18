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

end
