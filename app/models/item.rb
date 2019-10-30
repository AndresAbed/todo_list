class Item < ApplicationRecord
  belongs_to :list

  validates :description, uniqueness: true
end
