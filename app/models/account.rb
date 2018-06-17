class Account < ApplicationRecord
  has_many :offices, dependent: :destroy
end
