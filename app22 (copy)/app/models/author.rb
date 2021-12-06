class Author < ApplicationRecord
    include ActiveModel::Model
    has_many :books, -> { order(year_published: :desc) }
    enum status: {
        pending: 0,
        active: 1,
        archived: 2        
        }
end
