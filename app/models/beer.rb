class Beer < ApplicationRecord
  has_many :beerpairings, dependent: :destroy
  has_many :maindishes, through: :beerpairings
end
