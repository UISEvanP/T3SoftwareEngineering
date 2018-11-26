class Beerpairing < ApplicationRecord
  belongs_to :maindish
  belongs_to :beer
end
