class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :title
      t.text :summary
      t.string :full_text_url
      t.string :formal_id
      t.string :session_id
      t.string :openstates_uid
      t.date :date_introduced
      t.date :date_passed

      t.timestamps
    end
  end
end
