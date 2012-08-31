require 'spec_helper'

describe SessionsController do
  before do
    request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:default]
    request.env["omniauth.origin"] = register_new_path("CA")
  end

  describe "#create" do
    it "should create a session and redirect" do
      post :create, :provider => "developer"
      @test = session[:user]
      @test.info.name.should == "First Last"
      @test.info.location.should == "San Francisco"
      response.should redirect_to register_new_path("CA")
    end

    it "should create a session without an extra hash" do
      OmniAuth.config.add_mock(:default, {:uid => '12345', :info => {:name => "First Last", :location => "San Francisco"}, :extra => "extra"})
      post :create, :provider => "developer"
      @test = session[:user]
      @test.info.extra.should be_nil
    end

  end

  describe "GET 'error'" do
    before do
      OmniAuth.config.mock_auth[:twitter] = :invalid_credentials
    end

    it "should display flash error message and redirect to root" do
      post 'error'
      flash[:error].should == "Sign in failed"
      response.should redirect_to register_new_path("CA")
    end
  end

end
