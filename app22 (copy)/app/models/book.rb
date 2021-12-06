class Book < ApplicationRecord
  belongs_to :author
  has_many :reviews
  has_and_belongs_to_many :orders, join_table: 'books_orders'
  # scope :out_of_print, -> { where(id: 2) }
  scope :out_of_print_and_expensive, -> { out_of_print.where("price > 500") }
  
end
