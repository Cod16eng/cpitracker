class AddConnectedNotconnectedAscheripToParticipantWebinars < ActiveRecord::Migration[5.1]
  def change
  	add_column :participant_webinars, :connected, :boolean, default: false
  	add_column :participant_webinars, :notconnected, :boolean, default: false
  	add_column :participant_webinars, :ascherip, :boolean, default: false
  end
end
