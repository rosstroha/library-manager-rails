class Artist < ApplicationRecord
  has_many :tracks
  belongs_to :library

  validates :created_at, :updated_at, :presence => true

  property :name, type: String
  property :created_at, type: DateTime
  property :updated_at, type: DateTime
end
