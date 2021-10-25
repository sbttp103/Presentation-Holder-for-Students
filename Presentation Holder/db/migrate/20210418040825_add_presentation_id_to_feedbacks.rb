class AddPresentationIdToFeedbacks < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :presentation_id, :integer
  end
end
