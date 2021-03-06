module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  def notice
    flash[:notice]
  end

  def alert
    flash[:alert]
  end

  def set_admin_mode(value)
    session[:course_admin_mode] = value
  end
  
  def admin_mode?
    session[:course_admin_mode] == true
  end
  
  def render_course_subnav(menu_class)
    if admin_mode?
      render 'courses/courses_admin_menu', :highlight => menu_class
    else
      render 'courses/courses_menu', :highlight => menu_class
    end 
  end
  
  # if the selected_menu class name matches the menu_class
  # we make that menu item active
  def activate_menu(menu_class, selected_menu)
    class_list = menu_class
    class_list += (selected_menu == menu_class) ? " active" : ""
  end
  
end