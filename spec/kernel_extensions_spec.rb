require 'spec_helper'

describe "kernel_extensions" do
  describe "timer" do
    it "should time a block of code" do
      elapse = timer { sleep 1.1 }
      (elapse.should > 1) && (elapse.should < 2)
    end
  end
end
