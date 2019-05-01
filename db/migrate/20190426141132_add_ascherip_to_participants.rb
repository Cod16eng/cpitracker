class AddAscheripToParticipants < ActiveRecord::Migration[5.1]
  def change
  	add_column :participants, :ascherip, :boolean, default: false
  end
end
