class AddYesNoApToParticipants < ActiveRecord::Migration[5.1]
  def change
  	add_column :participants, :connected, :boolean, default: false
  	add_column :participants, :notconnected, :boolean, default: false
  	add_column :participants, :ascherip, :boolean, default: false
  end
end
