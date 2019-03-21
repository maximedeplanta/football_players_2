require 'rails_helper'

RSpec.describe League, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:clubs) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
