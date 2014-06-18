Dictionary Sequencer

Pre-requisites
==============
- bundle install


Run as a console application
==============
type the following into your terminal
```
irb
require_relative 'lib/dictionary'
Dictionary::Sequencer.new.console_out
```

 Run as a web application
==============
type the following into your terminal
```
ruby html_sequences.rb
```

visit localhost:4567

Tests
==============
type the following into your terminal
```
rspec spec
```
