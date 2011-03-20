require 'spec_helper'

describe User do
  it "should validate email" do
    user = User.new
    user.should_not be_valid
    user.errors[:email].should_not be_empty
  end
end
