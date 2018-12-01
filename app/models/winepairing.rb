class Winepairing < ApplicationRecord
  belongs_to :maindish
  belongs_to :wine
end
