class CreateSpeakerWebinars < ActiveRecord::Migration[5.1]
  def change
    create_table :speaker_webinars do |t|
      t.integer :webinar_id
      t.integer :speaker_id

      t.timestamps
    end
  end
end
