module ApplicationHelper
  def show_message message
    return '' unless message
    sanitize message.gsub(/\r\n|\n|\r/, '<br>'), :tags => %w(br)
  end
end
