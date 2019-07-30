class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true
  # validates :cocktail_id, :destroy => { :scope => :ingredient_id }
end

# soultions that I tried and failed
# :cocktail, dependent: :destroy
#  :cocktail_id, :uniqueness => { :scope => :ingredient_id }
  # has_many :doses
  # has_many :cocktails, through: :doses
  # validates :name, presence: true, uniqueness: true
