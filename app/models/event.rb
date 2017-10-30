class Event < ActiveRecord::Base
  belongs_to :user
  has_many :attends
  has_many :messages
  has_many :attendees, through: :attends, source: :user

  validates :name, :city, presence: true, length: { in: 2..30 }

  validates :state, presence: true, length: { is: 2 }

  def future_date
      if date.present? && date < Date.now
          errors.add(:date, "can't be in the past.")
      end
  end





end
