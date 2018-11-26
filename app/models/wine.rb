class Wine < ApplicationRecord
  has_many :winepairings, dependent: :destroy
  has_many :maindishes, through: :winepairings
end
