require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "should redirect on a state param" do
      get 'index', :state => "CA"
      response.should redirect_to("/register/CA")
    end

  end

end
