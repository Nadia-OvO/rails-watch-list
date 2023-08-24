class List < ApplicationRecord
  # should destroy child saved movies when destroying self --> dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  # A list must have a unique name.
  validates :name, presence: true, uniqueness: true
end
