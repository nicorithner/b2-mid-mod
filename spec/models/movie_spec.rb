require 'rails_helper'

describe Movie, type: :model do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :creation_year }
    it { should validate_presence_of :genre }
  end

  describe 'relationships' do
    it {should have_many(:actors).through(:movie_actors)}
  end
end