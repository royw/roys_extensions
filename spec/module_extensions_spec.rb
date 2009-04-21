require 'spec_helper'
require 'ruby-debug'

describe "ModuleExtensions" do
  it "should allow a method to be added to a class when the method does not already exists" do
    class A
      my_extension("foo") do
        def foo
          'foo'
        end
      end
    end
    A.instance_methods.include?('foo').should be_true
  end

  it "should not allow adding a method to a class if the method already exists" do
    class A
      def foo
        'bar'
      end
    end

    class A
      my_extension("foo") do
        def foo
          'foo'
        end
      end
    end
    a = A.new
    a.foo.should == 'bar'
  end

end
