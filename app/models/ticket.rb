class Ticket < ApplicationRecord
  has_one :user_lottery
  enum status: [:active, :inactive]
  enum kind: [:max, :mid, :low]
end
