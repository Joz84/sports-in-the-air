class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :favorite_sports
  has_many :events
  has_many :participations
  has_many :sports, through: :favorite_sports

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :login, presence: true
  validates :login, uniqueness: true
  # validates :email, presence: true
  # validates :email, uniqueness: true
  # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :password, presence: true
  validates :gender, presence: true
  validates :birthday, presence: true
  validates :status, presence: true

end
