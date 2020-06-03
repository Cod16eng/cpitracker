class CreateResearches < ActiveRecord::Migration[5.1]
  def change
    create_table :researches do |t|
      t.integer :user_id
      t.string :title
      t.string :status
      t.string :docs
      t.string :research

      t.timestamps
    end
  end
end
