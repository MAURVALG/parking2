class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
    t.string :plate
    t.string :vtype
    t.datetime :init
    t.datetime :exit
    t.integer :price
    t.timestamps
    end
  end
end
