class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :policies, class_name: 'Policy', foreign_key: 'user_id'
  has_many :certificates, class_name: 'Certificate', foreign_key: 'user_id'
end
