class RosettaCoin
  class Transaction

    attr_accessor :date, :account_number, :currency, :amount, :description, :type, :counter_party_name, :counter_party_account_number

    def initialize(data)
      data.each do |k, v|
        public_send("#{k.to_s}=", v)
      end
    end

    def year
      self.date.year
    end

    def month
      self.date.month
    end

    def day
      self.date.day
    end

  end
end