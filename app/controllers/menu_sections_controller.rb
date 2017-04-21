class MenuSectionsController < ApplicationController
  def index
    @menu_sections = MenuSection.all
    @larkins_favourites = @menu_sections.find_by(area: "Larkin's Favourites")
    @lunch_menu = @menu_sections.find_by(area: "Lunch Menu")
    @craft_beers = @menu_sections.find_by(area: "Craft Beers")
    @sharing_platters = @menu_sections.find_by(area: "Sharing Platters")
  end
  def beers
      @menu_sections = MenuSection.all
      @ale_beers = @menu_sections.find_by(area: "Ale Beers")
      @lager_beers = @menu_sections.find_by(area: "Lager Beers")
      @wine_list = @menu_sections.find_by(area: "Wine List")
      @fruit_beers = @menu_sections.find_by(area: "Fruit Beers")
end

def craft_beers
  @menu_sections = MenuSection.all
  @bricknell_brewery = @menu_sections.find_by(area: "Bricknell Brewery")
  @bad_seed = @menu_sections.find_by(area: "Bad Seed")
  @magic_rock = @menu_sections.find_by(area: "Magic Rock")
end

def wine_list
  
end
end
