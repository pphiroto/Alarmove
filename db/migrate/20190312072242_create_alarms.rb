class CreateAlarms < ActiveRecord::Migration[5.2]
  def change
    create_table :alarms do |t|
      t.integer :hour
      t.integer :minute
      t.text :ampm

      t.timestamps
    end
  end
end
