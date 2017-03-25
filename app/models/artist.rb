class Artist < ApplicationRecord
  has_many :tracks
  belongs_to :library
  belongs_to :playlist

  validates :created_at, :updated_at, :presence => true

  property :name, type: String
  property :created_at, type: DateTime
  property :updated_at, type: DateTime
  property :libraries_id, type: Integer
  property :playlists_id, type: Integer
end
