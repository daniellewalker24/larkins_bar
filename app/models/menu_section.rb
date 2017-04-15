class MenuSection < ApplicationRecord
  AREAS = ["Larkin's Favourites", "Lunch Menu", "Starters Menu Home Preview","Lunch Menu Home Preview", "Main Menu Home Preview", "Sharing Platters", "Craft Beers"]
  validates :area, presence: true, uniqueness: true, inclusion: { in: AREAS }
  CATEGORY = ["Home Preview", "Main Menu", "Beer Menu"]
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
