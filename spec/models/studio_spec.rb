require 'rails_helper'

describe Studio, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :location }
  end

  describe 'relationships' do
    it { should have_many :movies }
  end
end