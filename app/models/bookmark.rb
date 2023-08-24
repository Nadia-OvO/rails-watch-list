class Bookmark < ApplicationRecord
  # A bookmark must be linked to a movie and a list,
  belongs_to :list
  belongs_to :movie

  # and the [movie, list] pairings should be unique.

  # is unique for a given movie/list couple
  validates :movie_id, uniqueness: { scope: :list_id }

  # The comment of a bookmark cannot be shorter than 6 characters.
  validates :comment, length: { minimum: 6 }

end
