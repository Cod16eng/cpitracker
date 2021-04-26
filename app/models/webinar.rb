class Webinar < ApplicationRecord
belongs_to :user
	has_many :participant_webinars
	has_many :participants, through: :participant_webinars do
    def ascherip
      where('participant.ascherip = ?', true)
    end
    def connected
      where('participant_webinars.connected = ?', true)
    end
		def notconnected
      where('participant_webinars.connected = ?', false)
    end
  end

  has_many :speaker_webinars
	has_many :speakers, through: :speaker_webinars

	validates :name, presence: true, length: {minimum: 3, maximum: 100}
	validates :speaker_ids, presence: true
	validates :date, presence: true
	validates :programa, presence: true
end
