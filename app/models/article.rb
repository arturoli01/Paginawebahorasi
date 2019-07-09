class Article < ApplicationRecord
  validates :title,presence: true
  validates :description,length: {minimum: 5, maximum: 50}
end
