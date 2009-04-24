require 'spec_helper'

describe "numeric_extensions" do
  describe "elapsed_time" do
    it "should convert 0 seconds to '00:00:00'" do
      0.elapsed_time_s.should == '00:00:00'
    end

    it "should convert 59 seconds to '00:00:59'" do
      59.elapsed_time_s.should == '00:00:59'
    end

    it "should convert 60 seconds to '00:01:00'" do
      60.elapsed_time_s.should == '00:01:00'
    end

    it "should convert 3599 seconds to '00:59:59'" do
      3599.elapsed_time_s.should == '00:59:59'
    end

    it "should convert 3600 seconds to '01:00:00'" do
      3600.elapsed_time_s.should == '01:00:00'
    end

    it "should convert 86399 seconds to '23:59:59'" do
      86399.elapsed_time_s.should == '23:59:59'
    end

    it "should convert 86400 seconds to '24:00:00'" do
      86400.elapsed_time_s.should == '24:00:00'
    end

    it "should convert 359999 seconds to '99:59:59'" do
      359999.elapsed_time_s.should == '99:59:59'
    end

    it "should convert 360000 seconds to '100:00:00'" do
      360000.elapsed_time_s.should == '100:00:00'
    end
  end

end
