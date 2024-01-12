class Policy < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :certificates, dependent: :destroy

  validates :number, presence: true
  validates :company, presence: true
  validates :description, presence: true
end
