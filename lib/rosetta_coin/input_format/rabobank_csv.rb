require 'CSV'

class RosettaCoin
  class InputFormat
    class RabobankCsv
      def self.convert(text, options = {})
        result = {}
        CSV.parse(text) do |row|
          result[:date] = Date.parse(row[2])
          result[:account_number] = row[0]
          result[:currency] = row[1]
          result[:amount] = (row[3]=="D" ? -1.0 * row[4].to_f : row[4].to_f)
          result[:description] = (row[10] + ", " + row[11] + ", " + row[12] + ", " + row [13]).gsub(/(, ?)*$/,"")
          result[:type] = row[8]
          result[:counter_party_name] = row[6]
          result[:counter_party_account_number] = row[5]
        end
        return result      
      end
    end
  end
end