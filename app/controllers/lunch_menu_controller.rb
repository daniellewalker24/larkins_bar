class LunchMenuController < ApplicationController
  def index
    @menu_sections = MenuSection.all
    @lunch_menu = @menu_sections.find_by(area: "Lunch Menu")
    @toasted_sandwiches = @menu_sections.find_by(area: "Toasted Sandwiches")
  end
end
