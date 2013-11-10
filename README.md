# RosettaCoin

RosettaCoin is an extensible system to convert between various banking export formats. Currently only Rabobank CSV and ledger are supported, and I encourage you to fork the gem and add more modules for conversion of any format you need

## Installation

Add this line to your application's Gemfile:

    gem 'rosetta_coin'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rosetta_coin

## Usage

````ruby
require 'rosetta_coin'

converter = RosettaCoin.new(
  input_format:   'rabobank_csv', 
  output_format:  'ledger')

input_file =  File.new("readfile.csv", "r")
output_file = File.new("writefile.txt", "w") 

while line = input_file.gets
  output_file.puts converter.convert(line)
end

output_file.close
````

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
