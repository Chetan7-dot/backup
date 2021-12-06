class Article < ApplicationRecord
  include Visible
  after_initialize do |user|
    puts "You have initialized an object!"
  end

  has_many :comments, dependent: :destroy
  
  validates :title, presence: true
  validates :body, presence: true, length: { minimum:10 }

  after_find do |user|
    puts "You have found an object!"
  end

  after_touch do |user|
    puts "You have touched an object"
  end

  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Article destroyed'
  end
end
