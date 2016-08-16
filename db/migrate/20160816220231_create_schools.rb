class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.integer :school_id
      t.string :school_name
      t.integer :district_id

      t.timestamps
    end
  end
end
