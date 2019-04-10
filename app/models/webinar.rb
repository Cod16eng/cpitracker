class Webinar < ApplicationRecord

	validates :name, presence: true, length: {minimum: 3, maximum: 50}
	validates :relatore, presence: true, length: {minimum: 5, maximum: 100}
	validates :date, presence: true
	validates :programa, presence: true
end
