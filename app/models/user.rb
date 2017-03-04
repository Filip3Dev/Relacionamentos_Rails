class User < ApplicationRecord
  has_one :user_lottery
  enum kind: [:user, :manager, :other]
  enum status: [:active, :inactive]
end
