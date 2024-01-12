class Certificate < ApplicationRecord
  has_one_attached :file
  belongs_to :policy, class_name: 'Policy', foreign_key: 'policy_id'

  validates :type, presence: true
  validates :year, presence: true
  validates :month, presence: true
end
