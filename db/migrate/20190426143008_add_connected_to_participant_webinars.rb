class AddConnectedToParticipantWebinars < ActiveRecord::Migration[5.1]
  def change
  	add_column :participant_webinars, :connected, :boolean, default: false
  end
end
