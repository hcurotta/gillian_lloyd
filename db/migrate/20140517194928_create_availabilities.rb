class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.string :day
      t.string :hours

      t.timestamps
    end
  end
end
