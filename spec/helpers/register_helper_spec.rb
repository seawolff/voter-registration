require 'spec_helper'

describe RegisterHelper do

  describe "#help_text" do
    before do
      @instructions = FactoryGirl.create(:instruction)
      @test = Instructions.where(:state => "CA")
    end

    it "should return the help text for the instruction array" do
      helper.help_text(@test, "id_number").should == "Help text"
    end
  end

  describe "#title_select" do
    it "should return the array for titles" do
      helper.title_select.should == ["Mr.", "Mrs.", "Miss", "Ms."]
    end
  end

  describe "#suffix_select" do
    it "should return the array for suffix" do
      helper.suffix_select.should == ["Jr.", "Sr.", "II", "III", "IV"]
    end
  end

end
