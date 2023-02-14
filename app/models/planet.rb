class Planet < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :location,
            :description,
            :rotation_time,
            :revolution_time,
            :radius,
            :avg_temperature,
            :user,
            presence: true
  validates :price,
            :maximum_guests,
            presence: true,
            numericality: {
              greater_than: 0,
            }
end
