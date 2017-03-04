class AddKindToTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :tickets, :kind, :integer
  end
end
