class Speaker < ApplicationRecord
  has_many :speaker_webinars, :dependent => :destroy
  has_many :webinars, through: :speaker_webinars

  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

end
