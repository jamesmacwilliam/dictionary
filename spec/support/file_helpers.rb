def get_file_path(file_name = 'test.txt')
  File.expand_path(File.join(File.dirname(__FILE__), "../fixtures/#{file_name}"))
end
