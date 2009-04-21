require 'spec_helper'

puts "string_extensions"
describe "StringExtensions" do
  it "should escape unicode binary in URL strings to %xx notation" do
    s = "http://www.themoviedb.org/image/backdrops/23357/W\303\244hrend_Du_schliefst.jpg"
    s.escape_unicode.should == "http://www.themoviedb.org/image/backdrops/23357/W%c3%a4hrend_Du_schliefst.jpg"
  end

  it "should strip angle bracket tags" do
    s = 'Now is the <b>time</b> for all <i>good</i> Aggies'
    s.strip_tags.should == 'Now is the time for all good Aggies'
  end

  it "should replace file extension" do
    s = 'a/b.c'
    s.ext('d').should == 'a/b.d'
  end

  it "should replace only the last file extension in the string" do
    s = 'a.b.c'
    s.ext('d').should == 'a.b.d'
  end

  it "should append file extension when there is not one" do
    s = 'a/b/c'
    s.ext('d').should == 'a/b/c.d'
  end

end
