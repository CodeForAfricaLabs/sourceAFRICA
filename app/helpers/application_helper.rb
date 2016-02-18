module ApplicationHelper

  def compose_title(title)
    (title ? "#{title} | " : '') + 'sourceAFRICA'
  end

end
