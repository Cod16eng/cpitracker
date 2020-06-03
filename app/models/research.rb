class Research < ApplicationRecord
  belongs_to :user

  mount_uploader :research, ResearchUploader
  
   validates :title, :status, :research, presence: true
end
