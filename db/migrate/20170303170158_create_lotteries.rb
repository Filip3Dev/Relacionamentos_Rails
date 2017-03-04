class CreateLotteries < ActiveRecord::Migration[5.0]
  def change
    create_table :lotteries do |t|
      t.date :lottery_date
      t.string :pot
      t.string :selected
      t.string :last_selected
      t.string :full_pot

      t.timestamps
    end
  end
end
