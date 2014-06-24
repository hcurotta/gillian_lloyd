class AddAppointmentsToContent < ActiveRecord::Migration
  def change
    add_column :contents, :appointments, :text
  end
end
