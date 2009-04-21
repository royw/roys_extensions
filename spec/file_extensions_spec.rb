require 'spec_helper'
require 'tempfile'
require 'fileutils'
include FileUtils

TMPDIR = File.join(File.dirname(__FILE__), '../tmp')

describe "FileExtensions" do
  before(:all) do
    Dir.mkdir(TMPDIR) unless File.exist?(TMPDIR)
  end

  after(:each) do
    rm_rf(Dir.glob(File.join(TMPDIR,'file_extensions_spec*')))
  end

  it "should make a single directory when it does not exist" do
    dirspec = get_temp_filename
    File.mkdirs(dirspec)
    (File.exist?(dirspec).should be_true) && (File.directory?(dirspec).should be_true)
  end

  it "should make a multiple directories when they do not exist" do
    dirspec = File.join(get_temp_filename, 'foo', 'bar')
    File.mkdirs(dirspec)
    (File.exist?(dirspec).should be_true) && (File.directory?(dirspec).should be_true)
  end

  it "should not make any directories when they already exist" do
    dirspec = File.join(get_temp_filename, 'foo', 'bar')
    File.mkdirs(dirspec)
    File.mkdirs(dirspec)
    (File.exist?(dirspec).should be_true) && (File.directory?(dirspec).should be_true)
  end


  def get_temp_filename
    outfile = Tempfile.new('file_extensions_spec', TMPDIR)
    filespec = outfile.path
    outfile.unlink
    filespec
  end

end
