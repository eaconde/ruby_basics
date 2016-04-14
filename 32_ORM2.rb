class Model
  # @@ class variable
  @@all_fields = []

  def initialize
    @values = {}
  end

  def self.field(name)
    @@all_fields << name

    # get. i.e account.balance, account.address, account.name
    send(:define_method, name) do
      @values[name]
    end

    # set. i.e account.balance = ?, account.address = ?, account.name = ?
    send(:define_method, "#{name}=") do |value|
      @values[name] = value
    end
  end

  def print
    @@all_fields.each do |field|
      puts send(field)
    end
  end


end

class Account < Model
  field :balance
  field :address
  field :name
end

a = Account.new
# set
a.balance = 1_000_000
a.address = "1010 Langley Lane"
a.name = "Mr MoeMoney"
puts a.inspect
# get
puts a.balance
puts a.address
puts a.name
puts

p a.print
