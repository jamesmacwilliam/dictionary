require 'rubygems'
require 'bundler'
Bundler.require(:test)
require_relative '../lib/dictionary'

Dir["./spec/support/*.rb"].each {|file| require file }
