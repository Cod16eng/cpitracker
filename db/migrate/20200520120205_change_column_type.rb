class ChangeColumnType < ActiveRecord::Migration[5.1]
  def change
    change_column :webinars, :date, :datetime
  end
end
