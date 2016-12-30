class Category < ApplicationRecord
  has_many :items
  validates :name, presence: true, uniqueness: true,
                   length: { minimum: 2 }
end
