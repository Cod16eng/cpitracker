class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable  :registerable,
  has_many :webinars
  has_many :researches
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

   validates :email, presence: true, uniqueness: {case_sensitive: false}
end
