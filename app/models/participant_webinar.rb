class ParticipantWebinar < ApplicationRecord
	belongs_to :webinar, optional: true
    belongs_to :participant, optional: true

    scope :connected, -> { where(connected: true) }

    validates :webinar_id, :participant_id, presence: true

		def self.upload(file)
			CSV.foreach(file.path, headers: true) do |row|
			participant = Participant.find_by_email(row['email'])
			webinar = Webinar.find_by_name(row['webinar'])
			connected_yn =  row['connected'] == 'yes' ? true : false
			if participant&.id == nil || webinar&.id == nil
				return false

			else
				item = ParticipantWebinar.find_or_create_by(participant_id: participant.id,
													webinar_id: webinar.id, connected: connected_yn)
				item.save
			end
			end
		end

end
