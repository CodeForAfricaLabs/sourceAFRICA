module ApplicationHelper

  def compose_title(title)
    (title ? "#{title} | " : '') + 'sourceAFRICA'
  end

  def compose_html_classes(html_classes)
    html_classes = html_classes.split if html_classes.is_a?(String)
    [html_classes].flatten.join(' ')
  end

end
