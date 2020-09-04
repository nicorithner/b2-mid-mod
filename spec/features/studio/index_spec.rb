require 'rails_helper'

RSpec.describe "the Studios index page" do
  before :each do
    studio_1 = Studio.create!(name: "Studio 1", location: "some place")
    studio_2 = Studio.create!(name: "Studio 2", location: "some place")
    studio_3 = Studio.create!(name: "Studio 3", location: "some place")

    movie_1 = Movie.create!(title: "Movie 1", creation_year: 2010, genre: "action")
    movie_2 = Movie.create!(title: "Movie 2", creation_year: 2020, genre: "drama")
    movie_3 = Movie.create!(title: "Movie 3", creation_year: 2015, genre: "comedy")

    actor_1 = movie_1.actors.create!(name: "actor 1", age: 30)
    actor_2 = movie_1.actors.create!(name: "actor 2", age: 20)
    actor_3 = movie_2.actors.create!(name: "actor 3", age: 25)
    actor_4 = movie_3.actors.create!(name: "actor 4", age: 40)
    
    MovieActor.create!(actor: actor_1, movie: movie_1)
    MovieActor.create!(actor: actor_2, movie: movie_1)
    MovieActor.create!(actor: actor_3, movie: movie_2)
    MovieActor.create!(actor: actor_4, movie: movie_3)
  end

  it "should display all studios" do
    visit '/studios'
    expect(page).to have_content(@studio_1.name)
    expect(page).to have_content(@studio_2.name)
  end
end