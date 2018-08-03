class Appearance < ApplicationRecord

  belongs_to :guest
  belongs_to :episode

  validates :guest_rating, numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 1}

end
