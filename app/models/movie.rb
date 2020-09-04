class Movie < ApplicationRecord
  validates :title, :creation_year, :genre, presence: true
  has_many :movie_actors
  has_many :actors, through: :movie_actors
end