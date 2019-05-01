class CreateParticipantWebinars < ActiveRecord::Migration[5.1]
  def change
    create_table :participant_webinars do |t|
    	t.integer :webinar_id
    	t.integer :participant_id
    	t.timestamps 
    end
  end
end
