class Participant < ApplicationRecord

	has_many :participant_webinars
	has_many :webinars, through: :participant_webinars

	validates :email, presence: true, uniqueness: {case_sensitive: false}

def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		Participant.create! row.to_hash
	end
end

end
