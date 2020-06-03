class AddEditByToResearches < ActiveRecord::Migration[5.1]
  def change
    add_column :researches, :edit_by, :integer
  end
end
