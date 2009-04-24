require 'spec_helper'

describe "string_extensions" do

  describe "escape_unicode" do
    it "should escape unicode binary in URL strings to %xx notation" do
      s = "http://www.themoviedb.org/image/backdrops/23357/W\303\244hrend_Du_schliefst.jpg"
      s.escape_unicode.should == "http://www.themoviedb.org/image/backdrops/23357/W%c3%a4hrend_Du_schliefst.jpg"
    end
  end

  describe "strip_tags" do
    it "should strip angle bracket tags" do
      s = 'Now is the <b>time</b> for all <i>good</i> Aggies'
      s.strip_tags.should == 'Now is the time for all good Aggies'
    end
  end

  describe "ext" do
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

  describe "remove_punctuation" do
    it "should remove punctuation for a file name" do
      s = '*abc?:!",.-/~;@#$%^def' + "\'ghi"
      s.remove_punctuation.should == 'abc def ghi'
    end
  end

  describe "unescape_html" do
    it "should convert &amp; to &" do
      "M&amp;M".unescape_html.should == 'M&M'
    end

    it "should convert &#243; to ó" do
      "&#243;smosis".unescape_html.should == 'ósmosis'
    end
  end

end
