class ParticipantWebinar < ApplicationRecord
	belongs_to :webinar, optional: true
    belongs_to :participant, optional: true

    scope :connected, -> { where(connected: true) }

    #validates :webinar_id, presence: true

end