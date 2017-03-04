class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :status
      t.string :code
      t.string :value
      t.integer :kind
      t.timestamps
    end
  end
end
