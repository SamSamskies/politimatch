class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.string :number
      t.string :summary
      t.string :full_text_url
      t.date :date_introduced
      t.date :date_passed

      t.timestamps
    end
  end
end
