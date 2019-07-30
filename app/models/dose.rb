class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :cocktail_id, :uniqueness => { :scope => :ingredient_id }
end

  # belongs_to :cocktail
  # belongs_to :ingredient
  # validates :cocktail, uniqueness: { scope: :ingredient }
# StaffController
# def best
#   @best = Staff.where(stars: 5) # return a [ Collection ]
# end
