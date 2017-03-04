class CreateUserLotteries < ActiveRecord::Migration[5.0]
  def change
    create_table :user_lotteries do |t|
      t.integer :user_id
      t.integer :ticket_id
      t.integer :lottery_id

      t.timestamps
    end
  end
end
