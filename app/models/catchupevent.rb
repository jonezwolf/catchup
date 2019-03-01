class Catchupevent < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :capacity, presence: true, inclusion: { in: (1..500), allow_nil: false }
  validates :category, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?


  # validate :end_must_be_after_start
  # validate :start_must_be_in_the_future

  # def end_must_be_after_start
  #   errors.add(:end_time, "must be after start time") if start_time >= end_time
  # end

  # def start_must_be_in_the_future
  #   errors.add(:start_time, "must be in the future") if DateTime.now >= start_time
  # end

  def duration
    ((self.end_time - self.start_time) / 3600).to_i
  end

end
