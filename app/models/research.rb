class Research < ApplicationRecord
  belongs_to :user

  mount_uploader :research, ResearchUploader

   validates :title, :status, :research, presence: true

   def self.search(search)
   	researches = all
     if search
       where('title ILIKE ? OR status ILIKE ? OR docs ILIKE ?',"%#{search}%", "%#{search}%", "%#{search}%")
     else
       all
     end
   end
end
