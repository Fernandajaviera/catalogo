class PhysicalProduct < ApplicationRecord
  has_many :products, as: :productable
end
