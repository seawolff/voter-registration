require 'spec_helper'

describe GuidelinesController do

  before(:each) do
    @guidelines = FactoryGirl.create(:guidelines)
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show', :id => "CA"
      response.should be_success
    end

    it "should redirect for an invalid state" do
      get 'show', :id => "HA"
      response.should redirect_to guidelines_path
    end
  end

end
