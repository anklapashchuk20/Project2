class Article < ApplicationRecord
  validates :rating, presence: true
  validates :title, presence: true
  validates :author, presence: true
  validates :vendor, presence: true
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end