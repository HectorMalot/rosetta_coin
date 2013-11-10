class RosettaCoin
  class OutputFormat
    class Ledger
      def self.convert(transaction, options = nil)
        # TODO: clean up
        return "#{transaction.year}/#{transaction.month}/#{transaction.day} #{transaction.counter_party_name}-#{transaction.counter_party_account_number}\n"+
        "  ;#{transaction.description}\n"+
        "  Assets:" + ((options && options[:account_descriptions] && options[:account_descriptions].keys.include?(transaction.account_number)) ? options[:account_descriptions][transaction.account_number] : transaction.account_number) +
        "\t\t #{transaction.currency} #{transaction.amount.to_f}\n" +
        "  " + (transaction.amount < 0 ? "Expenses:Uncategorized" : "Income:Uncategorized") + "\n"
      end
    end
  end
end