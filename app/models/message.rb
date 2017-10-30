class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validates :content, presence: true, length: { minimum: 2 }
end
