class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :researches, :edit_by, :string
  end
end
