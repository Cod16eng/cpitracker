class SpeakerWebinar < ApplicationRecord
	belongs_to :webinar
    belongs_to :speaker
end
