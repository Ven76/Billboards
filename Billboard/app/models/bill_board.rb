class BillBoard < ApplicationRecord
  has_many :artists, dependent: :destroy
end
