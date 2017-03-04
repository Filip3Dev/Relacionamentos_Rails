class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :image
      t.integer :status
      t.string :wallet
      t.string :wallet_key

      t.timestamps
    end
  end
end
