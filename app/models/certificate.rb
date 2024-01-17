class Certificate < ApplicationRecord
  has_one_attached :file
  belongs_to :policy

  validates :type, presence: true
  validates :year, presence: true
  validates :month, presence: true
end
