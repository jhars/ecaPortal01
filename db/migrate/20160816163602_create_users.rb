class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.integer :district_id
      t.integer :school_id
      t.integer :grade
      t.string :email
      t.string :password_digest
      t.string :permission_level
      t.integer :student_count

      t.timestamps
    end
  end
end
