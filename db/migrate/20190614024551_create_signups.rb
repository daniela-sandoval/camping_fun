class CreateSignups < ActiveRecord::Migration[5.2]
  def change
    create_table :signups do |t|
      t.integer :time
      t.integer :camper_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
