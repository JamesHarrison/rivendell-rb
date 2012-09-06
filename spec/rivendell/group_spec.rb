require 'spec_helper'

describe Rivendell::Group do

  describe "#free_cart_number" do
    
    it "should return the first unused cart number" do
      group = Rivendell::Group.create :name => "Dummy", :default_cart_range => 1..3
      group.carts.create :title => "Dummy", :number => 1
      group.free_cart_number.should == 2
    end

  end

end
