require 'rails_helper'

RSpec.describe Player, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:club) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
