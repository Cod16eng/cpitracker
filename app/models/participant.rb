class Participant < ApplicationRecord

	has_many :participant_webinars
	has_many :webinars, through: :participant_webinars	
	accepts_nested_attributes_for :participant_webinars, 
	reject_if: proc { |attributes| attributes[:connected].blank? }, allow_destroy: true 

	validates :email, presence: true, uniqueness: {case_sensitive: false}

	scope :ascherip, -> { where(ascherip: true) }

def self.import(file)
	CSV.foreach(file.path, headers: true) do |row|
		Participant.create! row.to_hash
	end
end

end
