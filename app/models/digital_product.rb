class DigitalProduct < ApplicationRecord
  has_many :products, as: :productable
end
