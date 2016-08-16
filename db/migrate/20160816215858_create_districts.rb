class CreateDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :districts do |t|
      t.integer :district_id
      t.string :district_name
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
