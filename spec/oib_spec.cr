require "spec"
require "../src/oib"

describe OIB do
  it "should accept number" do
    OIB.is_valid?(79423753532).should eq(true)
    OIB.is_valid?(20858497843).should eq(true)
    OIB.is_valid?(84477684422).should eq(true)
    OIB.is_valid?(98004523293).should eq(true)
  end

  it "should accept string" do
    OIB.is_valid?("79423753532").should eq(true)
    OIB.is_valid?("20858497843").should eq(true)
    OIB.is_valid?("84477684422").should eq(true)
    OIB.is_valid?("98004523293").should eq(true)
  end

  it "should fail if OIB is too short" do
    status = OIB.is_valid? 840907312
    status.should eq(false)
  end

  it "should fail on unexpected input" do
    status = OIB.is_valid? "garbage"
    status.should eq(false)
  end

  it "should fail if OIB is invalid" do
    OIB.is_valid?(79423753531).should eq(false)
    OIB.is_valid?("79423753531").should eq(false)
  end
end
