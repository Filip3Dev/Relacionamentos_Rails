class UserLottery < ApplicationRecord
  belongs_to :user
  belongs_to :ticket
  belongs_to :lottery
end
