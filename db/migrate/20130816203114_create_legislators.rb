class CreateLegislators < ActiveRecord::Migration
  def change
    create_table :legislators do |t|
      t.string :party
      t.string :twitter
      t.string :website
      t.string :district
      t.string :photo

      t.timestamps
    end
  end
end
