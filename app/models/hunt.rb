class Hunt < ApplicationRecord
  belongs_to :monument
  belongs_to :user
  has_many :answers, through: :choices
  has_many :choices, dependent: :destroy
  validates :user, :monument, presence: true

  enum status: %i[pending scanned answering finished]
end
