class TransbankPayment < ApplicationRecord
  has_many :payments, as: :paymentable
end
