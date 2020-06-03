class AddUserIdToWebinars < ActiveRecord::Migration[5.1]
  def change
    add_column :webinars, :user_id, :integer
  end
end
