class AddUserIdToFeedbacks < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :user_id, :integer
  end
end
