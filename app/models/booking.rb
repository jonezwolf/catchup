class Booking < ApplicationRecord
  belongs_to :catchupevent
  belongs_to :user

  validates :number_of_guests, presence: true, inclusion: { in: (1..5), allow_nil: false }
end
