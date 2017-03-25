class Library < ApplicationRecord
  belongs_to :user

  validates :created_at, :updated_at, :presence => true

  property :name, type: String
  property :created_at, type: DateTime
  property :updated_at, type: DateTime
  property :users_id, type: Integer
end
