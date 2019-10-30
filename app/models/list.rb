class List < ApplicationRecord
  has_many :items, dependent: :destroy

  validates :name, uniqueness: true
  accepts_nested_attributes_for :items
end
