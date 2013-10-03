class CreateLegislators < ActiveRecord::Migration
  def change
    create_table :legislators do |t|
      t.string :first_name
      t.string :last_name
      t.string :party
      t.string :twitter
      t.string :website
      t.string :district
      t.string :photo_url
      t.string :leg_id

      t.timestamps
    end
  end
end
