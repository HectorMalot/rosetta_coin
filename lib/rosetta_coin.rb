require "rosetta_coin/version"
require "rosetta_coin/transaction"
require "rosetta_coin/input_format"
require "rosetta_coin/output_format"

class RosettaCoin
  attr_accessor :input_format, :output_format

  def initialize(options)
    @input_format  = options[:input_format]
    @output_format = options[:output_format]
    @input_formatter  = RosettaCoin::InputFormat.const_get(@input_format)
    @output_formatter = RosettaCoin::OutputFormat.const_get(@output_format) if @output_format
  end

  def convert(text, options = {})
    transaction = Transaction.new(@input_formatter.convert(text, options[:input_formatter_options]))
    if @output_formatter
      return @output_formatter.convert(transaction, options[:output_formatter_options])
    else
      return transaction
    end
  end
end
