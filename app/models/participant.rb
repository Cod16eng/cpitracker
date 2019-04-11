class Participant < ApplicationRecord

	has_many :participant_webinars
	has_many :webinars, through: :participant_webinars

	validates :email, presence: true, uniqueness: {case_sensitive: false}
end
