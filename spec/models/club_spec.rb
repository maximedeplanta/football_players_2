require 'rails_helper'

RSpec.describe Club, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:league) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
