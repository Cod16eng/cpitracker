class ParticipantWebinar < ApplicationRecord
	belongs_to :webinar
    belongs_to :participant
end