class Item < ApplicationRecord
  belongs_to :category
  validates :name, presence: true, uniqueness: true,
                   length: { minimum: 2 }
end
