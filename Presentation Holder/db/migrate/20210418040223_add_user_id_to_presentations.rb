class AddUserIdToPresentations < ActiveRecord::Migration[6.1]
  def change
    add_column :presentations, :user_id, :integer
  end
end
