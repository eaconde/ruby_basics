# send = idea of message passing

class Account
  attr_accessor :name, :address, :email, :notes

  def init(params)
    params.each_key do |k|
      # code below translates to
      # self.k = params[k]
      # with k = any of the keys in params (name, address, email, notes)
      self.send("#{k}=", params[k])

      # NOTE: we didn't do self.send("#{k}='#{params[k]}'")
      # so we can maintain the type of object passed instead of interpolated string
    end
  end
end

user_info = {
              name: 'John Smith',
              address: '1020 Langley Lane',
              email: 'john@gmail.com',
              notes: 'Loyal customer'
            }

account = Account.new

# Hard way...
# account.name = user_info[:name]
# account.address = user_info[:address]
# account.email = user_info[:email]
# account.notes = user_info[:notes]

# Cool way!
account.init(user_info)

puts account.inspect
