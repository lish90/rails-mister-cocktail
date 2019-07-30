class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
end
# Cocktail - things i tried and didnt work
# has_many :ingredients, through: :dose
# has_many :doses, dependent: :destroy
# validates :name, uniqueness: true, presence: true
# validates :cocktail_id, :destroy => { :scope => :ingredient_id }
