require "test_helper"

class AuthorTest < ActiveSupport::TestCase
  include ActiveModel::Lint::Tests
  
  setup do
    @model = Author.new
  end
end
