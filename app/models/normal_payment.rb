class NormalPayment < ApplicationRecord
  has_many :payments, as: :paymentable
end