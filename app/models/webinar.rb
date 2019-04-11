class Webinar < ApplicationRecord

	has_many :participant_webinars
	has_many :participants, through: :participant_webinars

	validates :name, presence: true, length: {minimum: 3, maximum: 100}
	validates :relatore, presence: true, length: {minimum: 5, maximum: 100}
	validates :date, presence: true
	validates :programa, presence: true
end
