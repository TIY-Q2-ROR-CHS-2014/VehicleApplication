module ApplicationHelper
  def active_tab(link_controller)
    "active" if params[:controller] == link_controller

    # if params[:controller] == link_controller
    #   "active" 
    # end
  end
end
