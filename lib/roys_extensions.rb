$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'module_extensions'
require 'string_extensions'
require 'object_extensions'
require 'numeric_extensions'
require 'kernel_extensions'
require 'file_extensions'
