require 'spec_helper'

describe "ObjectExtensions" do
  it "should be blank for nil" do
    nil.blank?.should be_true
  end

  it "should be blank for empty String" do
    ''.blank?.should be_true
  end

  it "should be blank for pure white space String" do
    ' '.blank?.should be_true
  end

  it "should be blank for empty Array" do
    [].blank?.should be_true
  end

  it "should be blank for Array of nils" do
    [nil, nil].blank?.should be_true
  end

  it "should be blank for empty Hash" do
    {}.blank?.should be_true
  end

  it "should not be blank for non-empty String" do
    ' foo '.blank?.should be_false
  end

  it "should not be blank for non-empty Array" do
    [1].blank?.should be_false
  end

  it "should not be blank for empty embedded Arrays" do
    [[]].blank?.should be_false
  end

  it "should not be blank for non-empty Hash" do
    {:a => nil}.blank?.should be_false
  end

end
