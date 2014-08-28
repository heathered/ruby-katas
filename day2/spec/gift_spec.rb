require "spec_helper"

describe GiftEx do
  
  it "should assign every member another member" do
    x = GiftEx.zip_members
    
    expect(x[0][1].class).to eql(String)
  end
  
  it "should turn a 2D array into a hash" do
    x = [["1", "2"], ["3, 4"]]
    y = GiftEx.givers_to_hash(x)
    
    expect(y.class).to eql(Hash)
  end
  
end