class Playlist < ApplicationRecord
  belongs_to :library
  has_many :tracks
  has_many :artists

  validates :created_at, :updated_at, :presence => true

  property :name, type: String
  property :created_at, type: DateTime
  property :updated_at, type: DateTime
  property :libraries_id, type: Integer
end
