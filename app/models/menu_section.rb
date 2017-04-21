class MenuSection < ApplicationRecord
  AREAS = ["Larkin's Favourites", "Lunch Menu", "Starters Menu Home Preview","Lunch Menu Home Preview", "Main Menu Home Preview", "Sharing Platters", "Ale Beers", "Lager Beers", "Fruit Beers", "Bricknell Brewery", "Magic Rock", "Bad Seed", "Wine List"]
  validates :area, presence: true, uniqueness: true, inclusion: { in: AREAS }
  CATEGORY = ["Home Preview", "Main Menu", "Beer Menu"]
  validates :category, presence: true, inclusion: { in: CATEGORY }

  SUB_CATEGORY = ["Favourites", "Craft Beer"]
  validates :sub_category, inclusion: { in: SUB_CATEGORY, allow_blank: true }
end
