class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :experience
      t.text :specialty
      t.string :address_line_1
      t.string :address_line_2
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :phone

      t.timestamps
    end
  end
end
