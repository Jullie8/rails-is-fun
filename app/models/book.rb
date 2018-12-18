class Book < ApplicationRecord
  has_many :contributions
  has_many :authors, through: :contributions
end
