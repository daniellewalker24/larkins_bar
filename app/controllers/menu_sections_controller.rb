class MenuSectionsController < ApplicationController
  def index
    @menu_sections = MenuSection.all
    @larkins_favourites = @menu_sections.find_by(area: "Larkin's Favourites")
    @lunch_menu = @menu_sections.find_by(area: "Lunch Menu")
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
  @menu_sections = MenuSection.all
  @sparkling_wine = @menu_sections.find_by(area: "Sparkling Wine")
  @white_wine = @menu_sections.find_by(area: "White Wine")
  @red_wine = @menu_sections.find_by(area: "Red Wine")
  @rose_wine = @menu_sections.find_by(area: "Rose Wine")
end

def lunch_menu
  @menu_sections = MenuSection.all
  @toasted_sandwiches = @menu_sections.find_by(area: "Toasted Sandwiches")
  @sandwiches = @menu_sections.find_by(area: "Sandwiches")
  @pasta_and_risotto = @menu_sections.find_by(area: "Pasta & Risotto")
  @omelettes = @menu_sections.find_by(area: "Omelettes")
  @lunch_favourites = @menu_sections.find_by(area: "Lunch Favourites")
end

def main_menu
  @menu_sections = MenuSection.all
  @small_plates = @menu_sections.find_by(area: "Small Plates")
  @risotto = @menu_sections.find_by(area: "Risotto")
  @pasta = @menu_sections.find_by(area: "Pasta")
  @larkins_burgers = @menu_sections.find_by(area: "Larkins Burgers")
  @salads = @menu_sections.find_by(area: "Salads")
  @larkins_sizzlers = @menu_sections.find_by(area: "Larkins Sizzlers")
  @sharing_platters = @menu_sections.find_by(area: "Sharing Platters")
  @larkins_favourites = @menu_sections.find_by(area: "Larkins Favourites")
  @sides = @menu_sections.find_by(area: "Sides")
  @sharing_sides = @menu_sections.find_by(area: "Sharing Sides")
end
end
