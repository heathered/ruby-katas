require "spec_helper"

describe StringCalc do
  
  it "should return 0 if no numbers" do
    x = StringCalc.add(" ")
    
    expect(x).to eql(0)
  end
  
  it "should add each number from string together" do
    x = StringCalc.add("1\n1")
    
    expect(x).to eql(2)
  end
  
  it "should raise exception if negative number" do
    
    expect{StringCalc.add("-8")}.to raise_exception
  end
  
  it "should ignore numbers over 1000" do
    x = StringCalc.add("1001\n5\n2")
    
    expect(x).to eql(7)
  end
  
end