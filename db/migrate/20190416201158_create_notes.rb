class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :page_number
      t.string :body
      t.integer :book_id

      t.timestamps
    end
  end
end
