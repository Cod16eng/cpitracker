class CreateWebinars < ActiveRecord::Migration[5.1]
  def change
    create_table :webinars do |t|
      t.string :name
      t.date :date
      t.string :relatore
      t.text :programa

      t.timestamps
    end
  end
end
