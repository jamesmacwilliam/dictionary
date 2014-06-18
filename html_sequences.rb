require_relative 'lib/dictionary'
require 'sinatra'
require 'haml'

get '/' do
  @sequences ||= Dictionary::Sequencer.new.parse_file
  haml :index
end
