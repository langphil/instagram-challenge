class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :user_name, :first_name, :last_name, :email, :password, presence: true
  validates :user_name, :email, uniqueness: true
  validates :password, length: { minimum: 6 }
end
