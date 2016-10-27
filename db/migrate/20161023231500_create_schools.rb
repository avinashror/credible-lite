class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :unitid
      t.string :instnm
      t.string :addr
      t.string :city
      t.string :stabbr
      t.string :zip
      t.string :ein

      t.timestamps
    end
  end
end
