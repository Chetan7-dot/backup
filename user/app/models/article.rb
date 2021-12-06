class Article < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, length: { minimum: 7}
end
