class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @menu_sections = MenuSection.all
    @lunch_menu = @menu_sections.find_by(area: "Lunch Menu Home Preview")
    @starters_menu = @menu_sections.find_by(area: "Starters Menu Home Preview")
    @home_main_menu = @menu_sections.find_by(area: "Main Menu Home Preview")

  end
end


def beers

end
