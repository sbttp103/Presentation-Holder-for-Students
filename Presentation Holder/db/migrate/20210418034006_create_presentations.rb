class CreatePresentations < ActiveRecord::Migration[6.1]
  def change
    create_table :presentations do |t|
      t.text :title
      t.text :author
      t.text :grade

      t.timestamps
    end
  end
end
