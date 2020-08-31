module ApplicationHelper
  
  def full_title(set_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if set_title.empty?
      base_title
    else
      set_title + " | " + base_title
    end
  end
end
