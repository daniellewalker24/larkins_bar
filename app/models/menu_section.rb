class MenuSection < ApplicationRecord
  AREAS = ["Larkin's Favourites", "Lunch Menu", "Starters Menu Home Preview","Lunch Menu Home Preview", "Main Menu Home Preview", "Sharing Platters", "Ale Beers", "Lager Beers", "Fruit Beers", "Bricknell Brewery", "Magic Rock", "Bad Seed", "Sparkling Wine", "White Wine", "Red Wine", "Rose Wine", "Toasted Sandwiches", "Sandwiches", "Pasta & Risotto", "Omelettes", "Lunch Favourites", "Small Plates", "Risotto", "Pasta", "Larkins Burgers", "Salads", "Larkins Sizzlers", "Sharing Platters", "Larkins Favourites", "Sides", "Sharing Sides"]
  validates :area, presence: true, uniqueness: true, inclusion: { in: AREAS }
  CATEGORY = ["Home Preview", "Main Menu", "Beer Menu", "Lunch Menu"]
  validates :category, presence: true, inclusion: { in: CATEGORY }

  SUB_CATEGORY = ["Favourites", "Craft Beer", "Wine List"]
  validates :sub_category, inclusion: { in: SUB_CATEGORY, allow_blank: true }
end
