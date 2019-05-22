class Participant < ApplicationRecord

	has_many :participant_webinars
	has_many :webinars, through: :participant_webinars	
	accepts_nested_attributes_for :participant_webinars, allow_destroy: true 

	validates :email, presence: true, uniqueness: {case_sensitive: false}

	scope :ascherip, -> { where(ascherip: true) }

def self.import(file)
	CSV.foreach(file.path, headers: true, encoding: 'iso-8859-1:utf-8') do |row|
		Participant.find_or_create_by row.to_hash
	end
end

def self.search(search)
	participants = all
  if search
    where('first_name ILIKE ? OR last_name ILIKE ? OR qualification ILIKE ?',"%#{search}%", "%#{search}%", "%#{search}%")
  else
    all
  end
end

end
