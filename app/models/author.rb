class Author < ApplicationRecord
  has_many :contributions
  has_many :books, through: :contributions

  def name_and_year
    "#{self.name} (b. #{self.birth_year})"
  end
end
