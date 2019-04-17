class RemoveColumnsFromParticipants < ActiveRecord::Migration[5.1]
  def change
  	remove_column :participants, :connected
  	remove_column :participants, :notconnected
  	remove_column :participants, :ascherip
  end
end
