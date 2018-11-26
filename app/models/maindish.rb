class Maindish < ApplicationRecord
  has_many :winepairings, dependent: :destroy
  has_many :wines, through: :winepairings
  has_many :beerpairings, dependent: :destroy
  has_many :beers, through: :beerpairings
end
