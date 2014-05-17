class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.string :day
      t.string :hours

      t.timestamps
    end
  end
end
