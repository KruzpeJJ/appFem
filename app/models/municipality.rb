class Municipality < ApplicationRecord
  validates :nombre, presence: true
end
