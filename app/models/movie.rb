class Movie < ApplicationRecord
  has_many :bookmarks

  # A movie must have a unique title and an overview.
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true

  # should not be able to destroy self if has bookmarks children
end
